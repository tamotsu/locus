class Comment < ActiveRecord::Base
  belongs_to :entry, :counter_cache => true

  validates_presence_of :name, :email, :content
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
