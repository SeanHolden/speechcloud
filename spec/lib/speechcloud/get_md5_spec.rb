require 'spec_helper'

describe SpeechCloud::GetMd5 do
  let(:this)    { SpeechCloud::GetMd5 }
  let(:api_key) { SpeechCloud::Config.api_key }
  
  context "to_md5 method" do
    it "can return an md5 hash of any string" do
      this.to_md5('testing123').should == "7f2ababa423061c509f4923dd04b6cf1"
    end
  end
  
  context "formula method" do
    it "returns the result of the formula: md5( md5( api_key ) + token )" do
      token              = 'some_token'
      api_as_md5         = Digest::MD5.hexdigest(api_key)
      api_md5_plus_token = api_as_md5 + token
      result             = Digest::MD5.hexdigest( api_md5_plus_token )
      
      this.formula(token).should == result
    end
  end
end