require 'rails_helper'

RSpec.describe Admin, type: :model do
  subject { build :admin }

  describe 'valdations' do
    it { should validate_uniqueness_of(:email) }
  end
end
