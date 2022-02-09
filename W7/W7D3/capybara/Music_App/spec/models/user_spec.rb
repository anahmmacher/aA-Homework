require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(email: 'user@gmail.com', password: 'password')}
    # validations
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest)}
    it { should validate_length_of(:password).is_at_least(6)}
end

describe "#is_password?" do
  subject() {}
  it "returns true if password is matches" do
    expect().to eq(true)
  end
  it "returns false if password doesn't match" do
    expect().to eq(false)

describe "#reset_session_token!" do
  subject() {}
  it


describe "::find_by_credentials" do
  subject(:user) {User.new(email: 'abc@gmail.com', password: '123456')}