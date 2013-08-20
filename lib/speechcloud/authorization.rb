require 'httparty'

module SpeechCloud::Auth
  class << self
    # Make a request for a token
    def get_token
      email = SpeechCloud::Config.email
      options = { :body => "email=#{email}" }
      HTTParty.post("#{BASE_URL}/tokens/", options)
    end

    # Verify that token and md5 are legit. A response of 1 confirms that they are.
    def check_token(token)
      params = "token=#{token}&md5=#{SpeechCloud::GetMd5.formula(token)}"
      HTTParty.get("#{BASE_URL}/tokens?#{params}")
    end
  end
end