require File.join(File.dirname(__FILE__), '..', 'lib', 'ivona_speech_cloud.rb')

RSpec.configure do |config|
  conf = IvonaSpeechCloud::Config
  conf.api_key  = 'T357_4P1_K3Y'
  conf.email    = 'test@email.com'
  conf.codec_id = 'mp3/22050'
  conf.voice_id = 'en_gb_emma'
end