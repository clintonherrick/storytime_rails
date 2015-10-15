class Content < ActiveRecord::Base
  belongs_to :story
  before_save :old_sentences
  validates :line, presence: true

  default_scope { order(:id) }

  def old_sentences
    stored_changes = []
    stored_changes.push(self.line)
  end
  # validates :image, :format => URI::regexp(%w(http https))

  # def add_to_number
  #   var = Content.order('number').last.number + 1
  #   self.number = var
  # end
end
