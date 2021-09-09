RSpec::Matchers.define :subscribe_to do |event_name|
  match do |domain|
    @is_registered = Wisper::GlobalListeners.registrations.any? do |registration|
      if event_name == :any_event
        registration.on.send(:list).nil? &&
          (@asynchronously.blank? || registration.broadcaster.is_a?(Wisper::SidekiqBroadcaster))
      else
        registration.listener == domain &&
          registration.on.include?(event_name) &&
          (@asynchronously.blank? || registration.broadcaster.is_a?(Wisper::SidekiqBroadcaster))
      end
    end

    return true if @is_registered && event_name == :any_event

    @failure_message = "#{@asynchronously.blank? ? 'Sync' : 'Async'} event subscription missing " \
      "for #{event_name} in #{domain} domain"

    if @is_registered
      begin
        expect(domain).to respond_to(event_name)
      rescue RSpec::Expectations::ExpectationNotMetError => e
        @failure_message = "Event handler is missing for #{event_name} in #{domain} domain"
        raise e
      end

      handler_class = build_handler_class(event_name, domain)
      handler = instance_double(handler_class)
      expect(handler_class).to receive(:new).with(a: 10, b: 20) { handler }
      expect(handler).to receive(:call!)

      domain.public_send(event_name, a: 10, b: 20, event_uid: 'a-b-c')
      true
    end
  end

  failure_message do
    @failure_message
  end

  chain :asynchronously do
    @asynchronously = true
  end

  chain :with_fifteen_minutes_delay do
    @with_fifteen_minutes_delay = true
  end

  private

  def build_handler_class(event_name, domain)
    handler_name = event_name.to_s.sub('__', '/').camelize
    handler_name += 'Handler'
    handler_name.remove!('::')
    handler_name.prepend("#{domain.name}::")
    handler_name.constantize
  end
end
