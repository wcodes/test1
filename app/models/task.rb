class Task < ActiveRecord::Base
	belongs_to :user

	validates :user_id, presence: true
	validates :content, presence: true

	auto_html_for :content do
		html_escape
		image
		youtube(:width => "100%", :hight => 250, :autoplay => false)
		link :target => "_blank", :rel => "nofollow"
		simple_format
	end

end
