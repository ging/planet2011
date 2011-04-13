class Site < ActiveRecord::Base
   belongs_to :type

   validates :name, :type_id, :latitude, :longitude, :zoom, :image_url, :presence => true
   validates :zoom, :numericality => {:greater_than_or_equal_to => 0.1}
   validates :name, :uniqueness => true 
end
