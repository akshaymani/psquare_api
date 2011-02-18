require 'spec_helper'

describe "/tips/show" do
  before(:each) do
    render 'tips/show'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/tips/show])
  end
end
