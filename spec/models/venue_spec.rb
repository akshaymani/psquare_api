require 'spec_helper'

describe Venue do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :address_1 => "value for address_1",
      :address_2 => "value for address_2",
      :address_city => "value for address_city",
      :address_state => "value for address_state",
      :address_zipcode => "value for address_zipcode",
      :lat => 1.5,
      :lng => 1.5
    }
  end

  it "should create a new instance given valid attributes" do
    Venue.create!(@valid_attributes)
  end
end
