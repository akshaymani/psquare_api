require 'spec_helper'

describe Checkin do
  before(:each) do
    @valid_attributes = {
      :user_id => 1,
      :venue_id => 1,
      :message => "value for message"
    }
  end

  it "should create a new instance given valid attributes" do
    Checkin.create!(@valid_attributes)
  end
end
