require 'spec_helper'

describe IvonaSpeechCloud::AdditionalInfo do
  let(:api_key) { IvonaSpeechCloud::Config.api_key }
  let(:email)   { IvonaSpeechCloud::Config.email }
  let(:this)    { IvonaSpeechCloud::AdditionalInfo  }
  
  context "check_text_price method" do
    it "should return the characters price for a specified speech parameters" do
      pending
      voice_id = '<NEED_TO_FILL_THIS_IN>'
      text     = "Hello, world!"
      this.check_text_price(voice_id,text)
    end
  end

  context "get_user_agreement_data method" do
    it "should return the correct details of the user agreement" do
      pending
      data = this.get_user_agreement_data
      data.should == '<NEED_TO_FILL_THIS_IN>'
    end
  end

  context "list_voices method" do
    it "should return list of all available voices and details of each" do
      pending
      this.list_voices.should == '<NEED_TO_FILL_THIS_IN>'
    end
  end

  context "get_voice_data method" do
    it "returns information for one specific voice" do
      pending
      data = this.get_voice_data('<SOME_VOICE_ID>')
      data.should == '<NEED_TO_FILL_THIS_IN>'
    end
  end

  context "list_codecs method" do
    it "should return a list of all available codecs to choose from" do
      pending
      this.list_codecs.should == '<NEED_TO_FILL_THIS_IN>'
    end
  end
end