# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Role, type: :model do

  describe "Validations" do
    it { should validate_presence_of(:name) }
  end

  #describe "Associations" do
  #  it { should has_many(:user) }
  #end
end
