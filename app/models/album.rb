class Album < ActiveRecord::Base

	def album_photos
		Photo.where("album_id = ?", id)
	end

end
