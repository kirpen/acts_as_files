# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "acts_as_files/version"

Gem::Specification.new do |s|
  
  s.name = 'acts_as_files'
  s.version = ActsAsFiles::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['redfield', 'Tyralion']
  s.email = ['info@dancingbytes.ru']
  s.homepage = 'https://github.com/dancingbytes/acts_as_files'
  s.summary = 'Files upload manager for rails'
  s.description = 'Files upload manager for rails'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.extra_rdoc_files = ['README']
  s.require_paths = ['lib']

  s.licenses = ['MIT']

  s.add_dependency 'railties', ['>= 3.0.0']
  s.add_dependency 'quick_magick', ['0.8']
  s.add_dependency 'nokogiri', ['~ 1.5']
  
end
