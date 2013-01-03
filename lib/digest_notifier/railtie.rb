require 'digest_notifier'
require 'rails'

module DigestNotifier
  class Railtie < ::Rails::Railtie
    rake_tasks do
      require 'digest_notifier/tasks'
    end
  end
end
