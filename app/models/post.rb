class Post < ActiveRecord::Base
  validates_presence_of :body, :url

  #post_type => promotion or announcement (lowercase - only)

end
