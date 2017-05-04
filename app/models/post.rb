class Post < ActiveRecord::Base  
  	belongs_to :user 
  	has_attached_file :image, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates :image, presence: true
	validates :user_id, presence: true  

post = Post.first

end  