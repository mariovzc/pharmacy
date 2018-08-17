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
#  created_by_id   :integer
#

class Product < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :expiration_date, presence: true
  validates :purchase_price, presence: true
  validates :purchase_price, numericality: { greater_than_or_equal_to: 1 }
  validates :stock, numericality: { only_integer: true, greater_than: 0 }

  # scopes
  scope :active, -> { where(status: true) }

  # Asociations
  belongs_to :created_by, class_name: 'User', foreign_key: 'created_by_id'

  # product methods

  def self.products_list
    active
  end

  def add_stock
    update_stock(self.stock.to_i + 1)
  end

  def remove_stock
    update_stock(self.stock.to_i - 1)
  end

  def deactivate!
    self.update(status: false)
  end

  private

  def update_stock(number)
    self.update(stock: number)
  end
end
