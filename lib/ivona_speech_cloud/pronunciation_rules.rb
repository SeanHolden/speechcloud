module IvonaSpeechCloud::Pronunciation
  class << self
    # Get the data for all user’s pronunciation rules for selected language
    # lang_id example: 'gb'
    def list_pronunciation_rules( lang_id )
      token  = Auth.get_token
      md5    = GetMd5.formula(token)
      params = [  "token=#{token}",
                  "md5=#{md5}",
                  "langId=#{lang_id}"  ]
      params = params.join('&')
      HTTParty.get("#{BASE_URL}/pronunciationrules?#{params}")
    end

    # Add any number of pronunciation rules for selected language into user’s account
    # lang_id example: 'en'
    # stat example: 1 == case insensitive, 2 == case sensitive
    # key (word to change) example:  'bcn'
    # value (word it will change to) example: 'bacon' 
    def add_pronunciation_rule( lang_id, stat, key, value )
      token  = Auth.get_token
      md5    = GetMd5.formula(token)
      params = {  token:token,
                  md5:md5,
                  langId:lang_id,
                  stat:stat,
                  key:key,
                  value:value  }
      HTTParty.post("#{BASE_URL}/pronunciationrules", {:body=>params})
    end

    # Modify any number of user’s pronunciation rules for selected language
    # id is the rule identifier. Could be aquired by using the list_pronunciation_rules method
    def modify_pronunciation_rule( id, lang_id, stat, key, value )
      token  = Auth.get_token
      md5    = GetMd5.formula(token)
      params = [  "token=#{token}",
                  "md5=#{md5}",
                  "langId=#{lang_id}",
                  "stat=#{stat}",
                  "key=#{key}",
                  "value=#{value}"  ]
      params = params.join('&')
      HTTParty.put("#{BASE_URL}/pronunciationrules/#{id}?#{params}")
    end

    # Delete any number of user’s pronunciation rules for selected language.
    def delete_pronunciation_rule( id, lang_id )
      token  = Auth.get_token
      md5    = GetMd5.formula(token)
      params = [  "token=#{token}",
                  "md5=#{md5}",
                  "langId=#{lang_id}"  ]
      params = params.join('&')
      HTTParty.delete("#{BASE_URL}/pronunciationrules/#{id}?#{params}")
    end
  end
end