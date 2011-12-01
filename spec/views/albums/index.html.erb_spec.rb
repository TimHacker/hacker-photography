require 'spec_helper'

describe "albums/index.html.erb" do
  before(:each) do
    assign(:albums, [
      stub_model(Album,
        :name => "Name",
        :sort_order => 1
      ),
      stub_model(Album,
        :name => "Name",
        :sort_order => 1
      )
    ])
  end

  it "renders a list of albums" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
