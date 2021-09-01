# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "digest_notifier"
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Naveed Ahmad"]
  s.date = "2013-04-18"
  s.description = "pending"
  s.email = "naveedahmada036@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "digest_notifier.gemspec",
    "lib/app/mailer/digest_mailer.rb",
    "lib/app/models/digest_email_delivery.rb",
    "lib/app/models/digest_email_group.rb",
    "lib/app/models/digest_email_item.rb",
    "lib/app/views/digest_notifier/digest_mailer/digest_notification.slim",
    "lib/digest_notifier.rb",
    "lib/digest_notifier/message_sending.rb",
    "lib/digest_notifier/performable_digest.rb",
    "lib/digest_notifier/railtie.rb",
    "lib/digest_notifier/tasks.rb",
    "lib/generators/digest_notifier/add_digest_resource_generator.rb",
    "lib/generators/digest_notifier/install_generator.rb",
    "lib/generators/digest_notifier/templates/README",
    "lib/generators/digest_notifier/templates/add_digest_resource_in_digest_email_items.rb",
    "lib/generators/digest_notifier/templates/create_digest_email_deliveries.rb",
    "lib/generators/digest_notifier/templates/create_digest_email_groups.rb",
    "lib/generators/digest_notifier/templates/create_digest_email_items.rb",
    "lib/generators/digest_notifier/templates/digest_notifier_config.rb"
  ]
  s.homepage = "http://github.com/naveed-ahmad/digest_notifier"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Send notifications to user via one digest email."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<slim>, [">= 1.0.4"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, "~> 6.3")
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
    else
      s.add_dependency(%q<slim>, [">= 1.0.4"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, "~> 6.3")
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    end
  else
    s.add_dependency(%q<slim>, [">= 1.0.4"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, "~> 6.3")
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
  end
end

