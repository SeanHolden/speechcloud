Gem::Specification.new do |s|
  s.name          = 'ivona_speech_cloud'
  s.version       = '0.1'
  s.date          = '2013-04-05'
  s.summary       = "Ivona Speech Cloud. A Text-to-Speech service."
  s.description   = "A gem for using the Ivona Text-to-Speech Speech Cloud API."
  s.authors       = ["Sean Holden"]
  s.email         = 'seanholden1@gmail.com'
  s.files         = ["lib/ivona_speech_cloud.rb"]
  s.homepage      = ''
    'http://rubygems.org/gems/ivona_speech_cloud'
  s.add_dependency "httparty"
  s.add_dependency "digest/md5"
end