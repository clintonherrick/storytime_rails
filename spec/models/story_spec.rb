require 'rails_helper'



describe Story do
  it { should validate_presence_of :title }
  it { should have_many :contents }
end

# describe StoriesController do
#   it do
#     should permit(:image, :title)
#   end
# end

# RSpec.describe Story, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
