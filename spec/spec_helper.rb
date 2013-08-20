require File.join(File.dirname(__FILE__), '..', 'lib', 'ivona_speech_cloud.rb')

RSpec.configure do |config|
  conf = IvonaSpeechCloud::Config
  conf.api_key  = ENV['IVONA_API_KEY']
  conf.email    = ENV['IVONA_EMAIL']
  conf.codec_id = 'mp3/22050'
  conf.voice_id = 'en_gb_emma'
end