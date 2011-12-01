require 'spec_helper'

describe "photos/new.html.erb" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :name => "MyString",
      :sort_order => 1,
      :url => "MyString",
      :alternate_description => "MyString",
      :height => 1,
      :width => 1,
      :album_id => 1
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => photos_path, :method => "post" do
      assert_select "input#photo_name", :name => "photo[name]"
      assert_select "input#photo_sort_order", :name => "photo[sort_order]"
      assert_select "input#photo_url", :name => "photo[url]"
      assert_select "input#photo_alternate_description", :name => "photo[alternate_description]"
      assert_select "input#photo_height", :name => "photo[height]"
      assert_select "input#photo_width", :name => "photo[width]"
      assert_select "input#photo_album_id", :name => "photo[album_id]"
    end
  end
end
