class DishImage < ActiveRecord::Base
  belongs_to :dish
  has_attached_file :avatar, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/images/dish-default.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
