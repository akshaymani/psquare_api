require 'spec_helper'

describe Tip do
  before(:each) do
    @valid_attributes = {
      :venue_id => 1,
      :user_id => 1,
      :body => "value for body"
    }
  end

  it "should create a new instance given valid attributes" do
    Tip.create!(@valid_attributes)
  end
end
