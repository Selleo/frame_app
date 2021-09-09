RSpec::Matchers.define :not_emit_anything do
  match do |block|
    @event_recorder = Wisper::RSpec::EventRecorder.new

    Wisper.subscribe(@event_recorder) do
      block.call
    end

    @event_recorder.broadcast_events.empty?
  end

  def supports_block_expectations?
    true
  end
end
