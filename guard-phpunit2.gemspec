# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "guard-phpunit"
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Maher Sallam"]
  s.date = "2013-06-02"
  s.description = "Guard::PHPUnit automatically run your unit-tests written with the PHPUnit testing framework."
  s.email = ["maher@sallam.me"]
  s.files = ["lib/guard/phpunit.rb", "lib/guard/phpunit/formatter.rb", "lib/guard/phpunit/formatters/PHPUnit-Progress", "lib/guard/phpunit/inspector.rb", "lib/guard/phpunit/notifier.rb", "lib/guard/phpunit/runner.rb", "lib/guard/phpunit/templates/Guardfile", "lib/guard/phpunit/version.rb", "LICENSE", "README.md", "CHANGELOG.md"]
  s.homepage = ""
  s.require_paths = ["lib"]
  s.rubyforge_project = "guard-phpunit"
  s.rubygems_version = "1.8.25"
  s.summary = "Guard gem for PHPUnit"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, ["~> 1.1"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<redcarpet>, [">= 0"])
      s.add_development_dependency(%q<pimpmychangelog>, [">= 0"])
    else
      s.add_dependency(%q<guard>, ["~> 1.1"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<redcarpet>, [">= 0"])
      s.add_dependency(%q<pimpmychangelog>, [">= 0"])
    end
  else
    s.add_dependency(%q<guard>, ["~> 1.1"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<redcarpet>, [">= 0"])
    s.add_dependency(%q<pimpmychangelog>, [">= 0"])
  end
end
