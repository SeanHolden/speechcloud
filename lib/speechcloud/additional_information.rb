module SpeechCloud::AdditionalInfo
  class << self
    # Check the characters price for a specified speech parameters (text and voice pair)
    def check_text_price(voice_id, text)
      token  = SpeechCloud::Auth.get_token
      md5    = SpeechCloud::GetMd5.formula(token)
      params = [  "token=#{token}",
                  "md5=#{md5}",
                  "text=#{text}", 
                  "voiceId=#{voice_id}"  ]
      params = params.join('&')
      HTTParty.get("#{BASE_URL}/textprice?#{params}")
    end
    
    # Show user TTS SaaS agreement data (this method will result in an error if there isn’t a SaaS agreement currently active for user)
    def get_user_agreement_data
      token  = SpeechCloud::Auth.get_token
      md5    = SpeechCloud::GetMd5.formula(token)
      params = [  "token=#{token}",
                  "md5=#{md5}"  ]
      params = params.join('&')
      HTTParty.get("#{BASE_URL}/agreementdata?#{params}")
    end

    # Get all available voices list
    def list_voices
      token  = SpeechCloud::Auth.get_token
      md5    = SpeechCloud::GetMd5.formula(token)
      params = [  "token=#{token}",
                  "md5=#{md5}"  ]
      params = params.join('&')
      HTTParty.get("#{BASE_URL}/voices?#{params}")
    end

    # Get single voice data
    def get_voice_data( voice_id )
      token  = SpeechCloud::Auth.get_token
      md5    = SpeechCloud::GetMd5.formula(token)
      params = [  "token=#{token}",
                  "md5=#{md5}"  ]
      params = params.join('&')
      HTTParty.get("#{BASE_URL}/voices/#{voice_id}?#{params}")
    end

    # Get all available codecs list
    def list_codecs
      token  = SpeechCloud::Auth.get_token
      params = [  "token=#{token}",
                  "md5=#{SpeechCloud::GetMd5.formula(token)}"  ]
      params = params.join('&')
      HTTParty.get("#{BASE_URL}/codecs?#{params}")
    end
  end
end