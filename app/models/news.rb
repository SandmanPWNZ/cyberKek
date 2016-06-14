class News < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  #Images
  has_attached_file :news_img, styles: { medium: "300x300>", thumb: "100x100>", small: "200x200" }, default_url: "/images/missing.png"
  validates_attachment_content_type :news_img, content_type: /\Aimage\/.*\Z/
end
