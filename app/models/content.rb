class Content < ActiveRecord::Base
  belongs_to :story

  validates :line, presence: true

  default_scope { order(:id) }
  # validates :image, :format => URI::regexp(%w(http https))

  # def add_to_number
  #   var = Content.order('number').last.number + 1
  #   self.number = var
  # end
end
