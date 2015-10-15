class Content < ActiveRecord::Base
  belongs_to :story
  before_save :old_sentences
  validates :line, presence: true

  default_scope { order(:id) }

  # CH & VD wonder: what is the old_sentences for?  Does not appear to be used anywhere else in project...
  def old_sentences
    stored_changes = []
    stored_changes.push(self.line)
  end
end
