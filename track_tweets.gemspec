# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "track_tweets/version"

Gem::Specification.new do |s|
  s.name = "track_tweets"
  s.version = TrackTweets::VERSION.dup
  s.platform = Gem::Platform::RUBY 
  s.summary = "API for track_tweets service"
  s.description = "API for track_tweets service (monitoring tweet stats)"
  s.authors = ["Igor Galeta"]
  s.email = "galeta.igor@gmail.com"
  s.rubyforge_project = "track_tweets"
  s.homepage = "https://github.com/galetahub/track_tweets_client"
  
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["{test}/**/*"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.require_paths = ["lib"]
  
  s.add_dependency("httparty", "~> 0.7.8")
  s.add_dependency("json", "~> 1.5.3")
end
