class Story < ActiveRecord::Base
  has_many :contents
  validates :title, presence: true

  default_scope { order(:created_at) }                     # will order stories by the creation date
end
