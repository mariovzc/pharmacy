# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string           not null
#  crypted_password :string
#  salt             :string
#  role_id          :integer
#  first_name       :string
#  last_name        :string
#  document         :string
#  status           :boolean          default(TRUE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "Validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:document) }
    it { should validate_presence_of(:role_id) }
    it { should validate_length_of(:password).is_at_least(6) }
    it { should validate_confirmation_of(:password).on(:create) }
  end

  describe "uniqueness" do
    subject { User.new(first_name: "Jon",last_name: "Doe", document: "123456", role_id: 1, email: "a@a.com",) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_uniqueness_of(:document).case_insensitive }
  end

  describe "Associations" do
    it { should belong_to(:role) }
  end

end
