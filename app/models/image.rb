class Image < ActiveRecord::Base
  has_one :stylist

  has_attachment :content_type => :image,
                 :path_prefix => 'public/uploads',
                 :storage => :file_system,
                 :max_size => 4.megabytes,
                 :resize_to => '298x434>',
                 :thumbnails => { :thumb => '250x250>' },
                 :processor => 'ImageScience'

  validates_as_attachment
  validates_uniqueness_of :filename

  def full_filename(thumbnail = nil)
    file_system_path = (thumbnail ? thumbnail_class : self).attachment_options[:path_prefix].to_s
    File.join(RAILS_ROOT, file_system_path, thumbnail_name_for(thumbnail))
  end

  def self.random
    Image.find_by_id rand(Image.count)+ 1
  end

end
