require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "post types not constrained to promotions or announcement should be invalid" do
    post = Post.new(:title=>'Post', :body=>'Sample Text', :post_type=>'Dummy Post')
    assert !post.valid?
  end

  test "promotion post is valid" do
    promo = Post.new(:title=>'post', :post_type=>"promotion" )
    assert promo.valid?
  end
 
  test "announcement post is valid" do
    annc = Post.new(:post_type=>'announcement')
    assert annc.valid?
  end

  test "should fail if body is null" do
    post = Post.new
    assert !post.valid?
  end

  test "should pass if body is not null" do
    post = Post.new(:body=>'post content')
    assert post.valid?
  end
end
