require 'spec_helper'

describe IvonaSpeechCloud::Config do
  let(:this) { IvonaSpeechCloud::Config }
  
  context "Assigning config variables" do
    before(:all) do
      this.email = 'test@email.com'
      this.api_key = 'ABC123'
      this.voice_id = 'en_gb_emma'
      this.codec_id = 'mp3/22050'
    end
  
    it "assigns the correct email address" do
      this.email.should == 'test@email.com'
    end

    it "assigns the correct API key" do
      this.api_key.should == 'ABC123'
    end

    it "assigns the correct voice_id" do
      this.voice_id.should == 'en_gb_emma'
    end

    it "assigns the correct codec_id" do
      this.codec_id.should == 'mp3/22050'
    end
  end

  # Setting config back to working creds
  after(:all) do
    conf = IvonaSpeechCloud::Config
    conf.api_key  = ENV['IVONA_API_KEY']
    conf.email    = ENV['IVONA_EMAIL']
    conf.codec_id = 'mp3/22050'
    conf.voice_id = 'en_gb_emma'
  end
end