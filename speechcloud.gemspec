Gem::Specification.new do |s|
  s.name          = 'speechcloud'
  s.version       = '0.1'
  s.date          = '2013-08-20'
  s.summary       = "Ivona Speech Cloud. A Text-to-Speech service."
  s.description   = "A gem for using the Ivona Text-to-Speech Speech Cloud API."
  s.authors       = ["Sean Holden"]
  s.email         = 'seanholden1@gmail.com'
  s.files         = ["lib/speechcloud.rb"]
  s.homepage      = ''
    #'http://rubygems.org/gems/ivona_speech_cloud'
  s.add_dependency "httparty"
end