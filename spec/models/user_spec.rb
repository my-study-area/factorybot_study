require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { user = build(:user) }
  it 'have_attributes' do
    expect(user).to have_attributes(
      :name => 'Adriano',
      :email => 'adriano@email.com',
      :password => '123'
    )
  end
end
