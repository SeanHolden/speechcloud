require 'spec_helper'

describe IvonaSpeechCloud::Pronunciation do
  let(:api_key) { IvonaSpeechCloud::Config.api_key }
  let(:email)   { IvonaSpeechCloud::Config.email }
  let(:this)    { IvonaSpeechCloud::Pronunciation }

  context "create new pronunciation rule, modify it and delete it" do
    it "should work as expected" do
      lang_id = 'en'
      stat    = '1'
      key     = 'bcn'
      value   = 'bacon'

      # Create new rule
      result  = this.add_pronunciation_rule(lang_id,stat,key,value)
      result.parsed_response.should eq(1)
      
      # Get that rule's ID via the list_pronunciation_rules method
      id = nil
      rules = this.list_pronunciation_rules(lang_id)
      rules.each { |rule| rule['key'] == 'bcn' ? id = rule['id'] : id=nil }

      # Modify the rule
      modified = this.modify_pronunciation_rule(id, lang_id, stat, 'bcn', 'baaacccooonnn')
      modified.parsed_response.should == 1

      # ...And delete it
      this.delete_pronunciation_rule(id, lang_id).parsed_response.should == 1
    end
  end

end