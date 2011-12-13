class Album < ActiveRecord::Base
	
	has_many :photos
	
	def album_photos
		Photo.where("album_id = ?", id)
	end

end
