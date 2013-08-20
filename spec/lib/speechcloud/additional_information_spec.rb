require 'spec_helper'

describe SpeechCloud::AdditionalInfo do
  let(:api_key) { SpeechCloud::Config.api_key }
  let(:email)   { SpeechCloud::Config.email }
  let(:this)    { SpeechCloud::AdditionalInfo  }
  
  context "check_text_price method" do
    it "should return the characters price for a specified speech parameters" do
      voice_id = 'en_gb_emma'
      result = this.check_text_price(voice_id,"Hello,%20world!")
      result.parsed_response.should eq(150)
    end
  end

  context "get_user_agreement_data method" do
    it "should return the correct details of the user agreement" do
      data = this.get_user_agreement_data
      keys = ['isMonthlyRenewed','allCharacters','currentCharacters',
              'previousCharacters','renewalDate','expirationDate',
              'isTrial','limits']
      keys.each do |key|
        data.has_key?(key).should == true
      end
    end
  end

  context "list_voices method" do
    it "should return list of all available voices and details of each" do
      result = this.list_voices
      keys = ['voiceId','langId','gender','voiceName','voiceDescription','providerName','productName']
      keys.each do |key|
        result[0].has_key?(key).should == true
      end
    end
  end

  context "get_voice_data method" do
    it "returns information for one specific voice" do
      data = this.get_voice_data('en_us_salli')
      keys = ['langId','gender','voiceName','voiceDescription','providerName','productName']
      keys.each do |key|
        data.has_key?(key).should == true
      end
    end
  end

  context "list_codecs method" do
    it "should return a list of all available codecs to choose from" do
      result = this.list_codecs
      keys = ['codecId','description','codec','rate','sample']
      keys.each do |key|
        result[0].has_key?(key).should == true
      end
    end
  end
end