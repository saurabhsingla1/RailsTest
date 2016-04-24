class Book < ActiveRecord::Base

	has_attached_file :avatar, styles: {thumbnail: "60x60#"}
	validates_attachment :avatar, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

	belongs_to :created_by, class_name: :User, :foreign_key => :created_by 


	def self.search(search)
	  if search
	    where('title LIKE ?', "%#{search}%")
	  else
	    self.all
	  end
end

end
