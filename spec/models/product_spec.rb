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

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:purchase_price) }
    it do
      should validate_numericality_of(:purchase_price)
    end
    it do
      should validate_numericality_of(:purchase_price)
        .is_greater_than_or_equal_to(1)
    end
    it { should validate_presence_of(:expiration_date) }
  end

  describe 'Associations' do
    it { should belong_to(:created_by) }
  end
end
