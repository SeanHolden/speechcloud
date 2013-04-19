BASE_URL = 'https://secure.ivona.com/api/saas/rest'

module IvonaSpeechCloud
  self.init

  def self.init
    unless load_parameters
      puts 'Please set your API key and Email from your Ivona account:'
      puts 'IvonaSpeechCloud::Config.api_key = <your_api_key>'
      puts 'IvonaSpeechCloud::Config.email   = <your_email_address>'
    end
  end
  
  protected

  def self.load_parameters
    conf = IvonaSpeechCloud::Config
    conf.codec_id = conf.codec_id || 'mp3/22050'
    conf.voice_id = conf.voice_id || 'en_gb_emma'

    if conf.api_key && conf.email
      return true
    else
      return false
    end
  end
end

require 'ivona_speech_cloud/authorization'
require 'ivona_speech_cloud/speech_generation'
require 'ivona_speech_cloud/pronunciation_rules'
require 'ivona_speech_cloud/additional_information'
require 'ivona_speech_cloud/get_md5'
require 'ivona_speech_cloud/configuration'