require 'spec_helper'

describe "albums/show.html.erb" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :name => "Name",
      :sort_order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
