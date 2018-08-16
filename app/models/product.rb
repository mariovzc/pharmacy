# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  code            :string
#  stock           :integer
#  purchase_price  :decimal(, )      not null
#  selling_price   :decimal(, )
#  expiration_date :date
#  status          :boolean          default(TRUE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Product < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :expiration_date, presence: true
  validates :purchase_price, presence: true
  validates :purchase_price, numericality: { greater_than_or_equal_to: 1 }
end
