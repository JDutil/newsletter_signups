# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "newsletter_signups/version"

Gem::Specification.new do |s|
  s.name        = "newsletter_signups"
  s.version     = NewsletterSignups::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jeff Dutil"]
  s.email       = ["JDutil@BurlingtonWebApps.com"]
  s.homepage    = "https://github.com/jdutil/newsletter_signups"
  s.summary     = %q{Rails 3 Engine to provide Newsletter Signups}
  s.description = %q{Rails 3 Engine to provide Newsletter Signups}

  s.rubyforge_project = "newsletter_signups"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
