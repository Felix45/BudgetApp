require 'rails_helper'

RSpec.describe Group, type: :model do
  before :each do
    @user = User.create(name: 'Felix', password: 'some_password', email: 'felix@doe.com', bio: 'Software developer')
    @group = Group.create(name: 'Football group', icon: 'http://localhost:3000/icon.png', description: 'description',
                          user_id: @user.id)
  end

  describe 'Validations' do
    it 'is not valid without a name' do
      @group.name = nil
      expect(@group).to_not be_valid
    end

    it 'is not valid without an icon' do
      @group.icon = 'Group'
      expect(@group).to_not be_valid
    end
  end
end
