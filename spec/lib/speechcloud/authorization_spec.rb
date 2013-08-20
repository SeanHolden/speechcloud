require 'spec_helper'

describe IvonaSpeechCloud::Auth do
  let(:api_key) { IvonaSpeechCloud::Config.api_key }
  let(:email)   { IvonaSpeechCloud::Config.email }
  let(:this)    { IvonaSpeechCloud::Auth }
  let(:token)   { this.get_token }
  
  context "get_token method" do
    it "should return a valid token" do
      token.should be_kind_of(String)
      token.length.should eq(32)
    end
  end

  context "check_token method" do
    it "should return 1 for a valid token" do
      this.check_token(token).parsed_response.should == 1
    end

    it "should return 0 for an invalid token" do
      invalid_token = 'Th15_Is_1nV4liD'
      this.check_token(invalid_token).parsed_response['code'].should eq('ERR_INVALID_TOKEN')
    end
  end
end