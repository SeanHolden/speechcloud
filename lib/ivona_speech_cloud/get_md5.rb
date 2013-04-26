module IvonaSpeechCloud::GetMd5
  class << self
    # Helper method to transform a string to MD5
    def to_md5(a_string)
      Digest::MD5.hexdigest(a_string)
    end

    # Formula for md5 param is: md5( md5( api_key ) + token )
    def formula(token)
      api_key = IvonaSpeechCloud::Config.api_key
      api_key_as_md5 = to_md5( api_key )
      to_md5( api_key_as_md5 + token )
    end
  end
end