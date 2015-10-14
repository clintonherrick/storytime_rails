class Content < ActiveRecord::Base
  belongs_to :story

  validates :line, presence: true
  # validates :image, :format => URI::regexp(%w(http https))
end
