BASE_URL = 'https://secure.ivona.com/api/saas/rest'
require 'digest/md5'

module IvonaSpeechCloud
  class << self; end
end

require 'ivona_speech_cloud/authorization'
require 'ivona_speech_cloud/speech_generation'
require 'ivona_speech_cloud/pronunciation_rules'
require 'ivona_speech_cloud/additional_information'
require 'ivona_speech_cloud/get_md5'
require 'ivona_speech_cloud/configuration'