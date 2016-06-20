class Team < ActiveRecord::Base
  has_and_belongs_to_many :tournament
  has_many :players


  #Images
  has_attached_file :team_logo, styles: { medium: "500x500>", small: "300x300>"}, default_url: "/images/no_team_logo.png"
  validates_attachment_content_type :team_logo, content_type: /\Aimage\/.*\Z/
end
