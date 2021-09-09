RSpec::Matchers.define :emit_events do |total_expected_events|
  match do |block|
    @event_recorder = Wisper::RSpec::EventRecorder.new

    Wisper.subscribe(@event_recorder) do
      block.call
    end

    if @kind
      @event_recorder.broadcast_events.count do |event_kind, _payload|
        event_kind == @kind.to_s
      end == total_expected_events
    else
      @event_recorder.broadcast_events.count == total_expected_events
    end
  end

  def supports_block_expectations?
    true
  end

  def of_kind(kind)
    @kind = kind
    self
  end

  failure_message do
    "Expected block to emit #{total_expected_events} events, " \
      "but emitted #{@event_recorder.broadcast_events.size}. Emitted events: \n\n" +
      @event_recorder.broadcast_events.map do |event_name, payload|
        "#{event_name}\n--------------------\n#{payload.inspect}"
      end.join("\n\n")
  end
end
