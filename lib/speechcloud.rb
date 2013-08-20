BASE_URL = 'https://secure.ivona.com/api/saas/rest'
require 'digest/md5'

module SpeechCloud
  class << self; end
end

require 'speechcloud/authorization'
require 'speechcloud/speech_generation'
require 'speechcloud/pronunciation_rules'
require 'speechcloud/additional_information'
require 'speechcloud/get_md5'
require 'speechcloud/configuration'