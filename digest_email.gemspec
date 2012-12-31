# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{digest_email}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Naveed Ahmad}]
  s.date = %q{2012-12-31}
  s.description = %q{Send Digest email to your customer.}
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
    "app/models/digest_email_group_model.rb",
    "app/models/digest_email_item_model.rb",
    "digest-email.gemspec",
    "digest_email.gemspec",
    "lib/digest_email.rb",
    "lib/digest_email/backend.rb",
    "lib/digest_email/message_sending.rb",
    "lib/digest_email/performable_digest.rb",
    "lib/generators/digest_email/install_generator.rb",
    "lib/generators/digest_email/templates/README",
    "lib/generators/digest_email/templates/create_digest_email_groups.rb",
    "lib/generators/digest_email/templates/create_digest_email_items.rb",
    "lib/generators/digest_email/templates/digest_email_config.rb",
    "lib/generators/digest_email/templates/digest_email_group_model.rb",
    "lib/generators/digest_email/templates/digest_email_item_model.rb",
    "test/helper.rb"
  ]
  s.homepage = %q{http://github.com/naveed-ahmad/digest-email}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Send Digest email to your customer.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

