# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{digest_notifier}
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Naveed Ahmad}]
  s.date = %q{2013-01-04}
  s.description = %q{pending}
  s.email = %q{naveedahmada036@gmail.com}
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
    "lib/generators/digest_notifier/install_generator.rb",
    "lib/generators/digest_notifier/templates/README",
    "lib/generators/digest_notifier/templates/create_digest_email_deliveries.rb",
    "lib/generators/digest_notifier/templates/create_digest_email_groups.rb",
    "lib/generators/digest_notifier/templates/create_digest_email_items.rb",
    "lib/generators/digest_notifier/templates/digest_notifier_config.rb"
  ]
  s.homepage = %q{http://github.com/naveed-ahmad/digest_notifier}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Send notifications to user via one digest email.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<slim>, [">= 1.0.4"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<slim>, [">= 1.0.4"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<slim>, [">= 1.0.4"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

