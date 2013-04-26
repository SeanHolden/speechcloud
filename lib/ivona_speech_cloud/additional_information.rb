module IvonaSpeechCloud::AdditionalInfo
  # Check the characters price for a specified speech parameters (text and voice pair)
  def self.check_text_price(voice_id, text)
    token  = Auth.get_token
    md5    = GetMd5.formula(token)
    params = [  "token=#{token}",
                "md5=#{md5}",
                "text=#{text}", 
                "voiceId=#{voice_id}"  ]
    params = params.join('&')
    HTTParty.get("#{BASE_URL}/textprice?#{params}")
  end
  
  # Show user TTS SaaS agreement data (this method will result in an error if there isn’t a SaaS agreement currently active for user)
  def self.get_user_agreement_data
    token  = Auth.get_token
    md5    = GetMd5.formula(token)
    params = [  "token=#{token}",
                "md5=#{md5}"  ]
    params = params.join('&')
    HTTParty.get("#{BASE_URL}/agreementdata?#{params}")
  end

  # Get all available voices list
  def self.list_voices
    token  = Auth.get_token
    md5    = GetMd5.formula(token)
    params = [  "token=#{token}",
                "md5=#{md5}"  ]
    params = params.join('&')
    HTTParty.get("#{BASE_URL}/voices?#{params}")
  end

  # Get single voice data
  def self.get_voice_data( voice_id )
    token  = Auth.get_token
    md5    = GetMd5.formula(token)
    params = [  "token=#{token}",
                "md5=#{md5}"  ]
    params = params.join('&')
    HTTParty.get("#{BASE_URL}/voices/#{voice_id}?#{params}")
  end

  # Get all available codecs list
  def self.list_codecs
    token  = Auth.get_token
    params = [  "token=#{token}",
                "md5=#{GetMd5.formula(token)}"  ]
    params = params.join('&')
    HTTParty.get("#{BASE_URL}/codecs?#{params}")
  end
end