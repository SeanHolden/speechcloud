BASE_URL = 'https://secure.ivona.com/api/saas/rest'
require 'digest/md5'

module IvonaSpeechCloud
  class << self
    # TODO: Write a before method, to ensure config is set up.
    # 'Please set your API key and Email from your Ivona account:'
    # 'IvonaSpeechCloud::Config.api_key = <your_api_key>'
    # 'IvonaSpeechCloud::Config.email   = <your_email_address>'
  end
end

require 'ivona_speech_cloud/authorization'
require 'ivona_speech_cloud/speech_generation'
require 'ivona_speech_cloud/pronunciation_rules'
require 'ivona_speech_cloud/additional_information'
require 'ivona_speech_cloud/get_md5'
require 'ivona_speech_cloud/configuration'