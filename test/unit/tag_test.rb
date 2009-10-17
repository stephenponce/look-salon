require 'test_helper'

class TagTest < ActiveSupport::TestCase

  test "should have a unique order number" do

    tag = Tag.new(:name=>'test_tag', :order=>tags(:one).order)
    tag.valid?

    assert_not_nil tag.errors.on(:order)
  end


end
