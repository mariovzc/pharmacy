# frozen_string_literal: true

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

class User < ApplicationRecord
  authenticates_with_sorcery!

  # associations
  belongs_to :role

  # validations
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :email, email_format: { message: 'Formato Invalido' }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role_id, presence: true
  validates :document, uniqueness: true, presence: true

  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true, on: :create
end
