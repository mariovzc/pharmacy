# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :boolean          default(TRUE)
#

class Role < ApplicationRecord
  #associations
  has_many :users

  #validations
  validates :name, presence: true
end
