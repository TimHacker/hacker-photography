require 'spec_helper'

describe "albums/edit.html.erb" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :name => "MyString",
      :sort_order => 1
    ))
  end

  it "renders the edit album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => albums_path(@album), :method => "post" do
      assert_select "input#album_name", :name => "album[name]"
      assert_select "input#album_sort_order", :name => "album[sort_order]"
    end
  end
end
