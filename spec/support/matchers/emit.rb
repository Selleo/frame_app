RSpec::Matchers.define :emit do |*event_args|
  match do |actual|
    event_payload = event_args.extract_options!
    event_payload[:event_uid] = anything
    event_payload = if event_args.second.is_a?(RSpec::Mocks::ArgumentMatchers::HashIncludingMatcher)
                      RSpec::Mocks::ArgumentMatchers::HashIncludingMatcher.new(
                        event_args.second.instance_variable_get('@expected').merge(event_payload)
                      )
                    else
                      event_payload
                    end

    expect { actual.call }.to broadcast(event_args.first, event_payload)
  end

  def supports_block_expectations?
    true
  end
end

RSpec::Matchers.alias_matcher :not_emit, :not_broadcast
