require 'rails_helper'

RSpec.describe History, type: :model do
  describe 'validate' do
    it { should validate_presence_of(:content) }
    it { should validate_length_of(:content).is_at_most(255).with_message("should less than 255 characters")}
  end
end
