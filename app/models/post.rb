class Post < ActiveRecord::Base
  validates_presence_of :body

  def post_date
  end

  #post_type => promotion or announcement (lowercase - only)

end
