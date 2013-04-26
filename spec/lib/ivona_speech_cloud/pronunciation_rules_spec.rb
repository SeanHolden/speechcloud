require 'spec_helper'

describe IvonaSpeechCloud::Pronunciation do
  let(:api_key) { IvonaSpeechCloud::Config.api_key }
  let(:email)   { IvonaSpeechCloud::Config.email }
  let(:this)    { IvonaSpeechCloud::Pronunciation }

  context "list_pronunciation_rules method" do
    it "returns data for all pronunciation rules for selected language" do
      pending
      lang_id = 'gb'
      this.list_pronunciation_rules(lang_id).should == '<NEED_TO_FILL_IN>'
    end
  end

  context "add_pronunciation_rule method" do
    it "adds a new pronunciation rule for selected language into user's account" do
      pending
      lang_id = 'gb'
      stat    = '1'
      key     = 'bcn'
      value   = 'bacon'
      result  = this.add_pronunciation_rule(lang_id,stat,key,value)
      result.should == '<NEED_TO_FILL_IN>'
    end
  end

  context "modify_pronunciation_rule method" do
    it "modifies an existing pronunciation rule for selected language into user's account" do
      pending
      id      = '<GET_ID_SOMEHOW>'
      lang_id = 'gb'
      stat    = '1'
      key     = 'bcn'
      value   = 'baaaccoonn'
      result  = this.modify_pronunciation_rule(id, lang_id, stat, key, value)
      result.should == '<NEED_TO_FILL_IN>'
    end
  end

  context "delete_pronunciation_rule method" do
    it "deletes a given pronunciation rule" do
      pending
      id      = '<GET_ID_SOMEHOW>'
      lang_id = 'gb'
      this.delete_pronunciation_rule(id, lang_id).should == '1'
    end
  end
end