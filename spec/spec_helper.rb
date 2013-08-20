require File.join(File.dirname(__FILE__), '..', 'lib', 'speechcloud.rb')

RSpec.configure do |config|
  conf = SpeechCloud::Config
  conf.api_key  = ENV['IVONA_API_KEY']
  conf.email    = ENV['IVONA_EMAIL']
  conf.codec_id = 'mp3/22050'
  conf.voice_id = 'en_gb_emma'
end