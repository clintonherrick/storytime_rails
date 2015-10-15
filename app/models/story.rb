class Story < ActiveRecord::Base
  has_many :contents
  validates :title, presence: true
  validates :image, :format => URI::regexp(%w(http https)) # validates if string inputted in the form is a valid urlf

  default_scope { order(:created_at) }                     # will order stories by the creation date
end
