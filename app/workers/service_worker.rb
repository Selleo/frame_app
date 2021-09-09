class ServiceWorker < SidekiqWorker
  sidekiq_options backtrace: 20, dead: true, retry: 10, queue: 'default'

  def perform(service_name, *args)
    klass = service_name.camelize.constantize
    klass.call(*args)
  end
end
