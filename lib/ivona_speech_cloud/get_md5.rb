require 'digest/md5'

module IvonaSpeechCloud::GetMd5
  # Formula for md5 param is: md5( md5( api_key ) + token )
  def self.formula(token)
    api_key = IvonaSpeechCloud::Config.api_key
    puts api_key.kind_of? String
    api_key_as_md5 = to_md5( api_key )
    to_md5( api_key_as_md5 + token )
  end

  def self.to_md5(a_string)
    Digest::MD5.hexdigest(a_string)
  end
end