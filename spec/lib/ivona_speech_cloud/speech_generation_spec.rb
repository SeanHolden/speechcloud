require 'spec_helper'

describe IvonaSpeechCloud::Speech do
  let(:api_key) { IvonaSpeechCloud::Config.api_key }
  let(:email)   { IvonaSpeechCloud::Config.email }
  let(:this)    { IvonaSpeechCloud::Speech }

  context "get_speech_file_params method" do
    it "returns a hash of params" do
      pending
      keys = ['token','md5','text','contentType','voiceId','codecId']
      result = this.get_speech_file_params('Hello, world!')
      keys.each do |key|
        result.has_key?(key).should == true
      end 
    end
  end

  context "create_speech_file method" do
    it "returns a hash containing a url that contains the required speech file" do
      pending
      text = 'Hello, world!'
      this.create_speech_file(text).should == '<NEED_TO_FILL_IN>'
    end
  end

  context "create_speech_file_with_marks method" do
    it "returns same as above but with speech marks describing the positions of the text entities in a speech file" do
      pending
      text = 'Hello, world!'
      this.create_speech_file_with_marks(text).should == '<NEED_TO_FILL_IN>'
    end
  end

  context "delete_speech_file method" do
    it "deletes a single speech file data" do
      pending
      file_id = '<NEED_TO_FILL_IN>'
      this.delete_speech_file(file_id).should == '<NEED_TO_FILL_IN>'
    end
  end

  context "list_speech_files method" do
    it "lists all speech files generated" do
      pending
      this.list_speech_files.should == '<NEED_TO_FILL_IN>'
    end
  end

  context "get_speech_file_data method" do
    it "returns data of a single speech file" do
      pending
      file_id = '<NEED_TO_FILL_IN>'
      this.get_speech_file_data(file_id).should == '<NEED_TO_FILL_IN>'
    end
  end
end