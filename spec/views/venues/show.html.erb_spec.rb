require 'spec_helper'

describe "/venues/show" do
  before(:each) do
    render 'venues/show'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/venues/show])
  end
end
