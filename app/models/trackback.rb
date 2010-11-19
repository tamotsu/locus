class Trackback < ActiveRecord::Base
  belongs_to :entry, :counter_cache => true
  before_save :name_title_check, :convert_encoding
  validates_presence_of :url

protected
  def name_title_check
    self.title = url if title.blank?
    self.blog_name = "" if blog_name.blank?
  end

  def convert_encoding
    self.blog_name = blog_name.toutf8 unless blog_name.blank?
    self.title = title.toutf8
    self.excerpt = excerpt.toutf8 unless excerpt.blank?
  end
end
