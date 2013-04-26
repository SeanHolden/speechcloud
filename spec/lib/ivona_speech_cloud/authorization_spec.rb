require 'spec_helper'

describe IvonaSpeechCloud::Auth do
  let(:api_key) { IvonaSpeechCloud::Config.api_key }
  let(:email)   { IvonaSpeechCloud::Config.email }
  let(:this)    { IvonaSpeechCloud::Auth }
  let(:token)   { this.get_token }
  
  context "get_token method" do
    it "should return a valid token" do
      pending
      token.should be_kind_of?(String)
      token.length.should == '<NEED_TO_FILL_THIS_IN>'
    end
  end

  context "check_token method" do
    it "should return 1 for a valid token" do
      pending
      this.check_token(token).should == '1'
    end

    it "should return 0 for an invalid token" do
      pending
      invalid_token = 'Th15_Is_1nV4liD'
      this.check_token(invalid_token).should == '0'
    end
  end
end