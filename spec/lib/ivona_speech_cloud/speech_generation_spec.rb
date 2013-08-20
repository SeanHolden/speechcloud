require 'spec_helper'

describe IvonaSpeechCloud::Speech do
  let(:api_key) { IvonaSpeechCloud::Config.api_key }
  let(:email)   { IvonaSpeechCloud::Config.email }
  let(:this)    { IvonaSpeechCloud::Speech }

  context "get_speech_file_params method" do
    it "returns a hash of params" do
      keys = [:token,:md5,:text,:contentType,:voiceId,:codecId]
      result = this.get_speech_file_params('Hello, world!')
      result.should be_kind_of(Hash)
      keys.each do |key|
        result.has_key?(key).should == true
      end 
    end
  end

  context "create_speech_file method" do
    it "returns a hash containing a url that contains the required speech file" do
      keys = ['fileId','charactersPrice','soundUrl','embedCode']
      result = this.create_speech_file('Hello, world!')
      result.should be_kind_of(Hash)
      keys.each do |key|
        result.has_key?(key).should == true
      end
    end
  end

  context "create_speech_file_with_marks method" do
    it "returns same as above but with speech marks describing the positions of the text entities in a speech file" do
      keys = ['fileId','charactersPrice','soundUrl','embedCode','marksUrl']
      result = this.create_speech_file_with_marks('Hello, world!')
      result.should be_kind_of(Hash)
      keys.each do |key|
        result.has_key?(key).should == true
      end
    end
  end

  context "delete_speech_file method" do
    it "deletes a single speech file data" do
      result = this.create_speech_file('Hello, world!')
      file_id = result['fileId']
      deleted = this.delete_speech_file(file_id)
      deleted.parsed_response.should eq(1)
    end
  end

  context "list_speech_files method" do
    it "lists all speech files generated" do
      this.create_speech_file('Hello, world!')
      result = this.list_speech_files
      result = result.parsed_response
      keys = ["fileId","textHead","voiceId","codecId","created"]
      result.should be_kind_of(Array)
      keys.each do |key|
        result[0].has_key?(key).should == true
      end
    end
  end

  context "get_speech_file_data method" do
    it "returns data of a single speech file" do
      speech_file = this.create_speech_file('Hello, world!')
      file_id = speech_file['fileId']
      result = this.get_speech_file_data(file_id)
      result.should be_kind_of(Hash)
      result['text'].should eq('Hello, world!')
    end
  end
end