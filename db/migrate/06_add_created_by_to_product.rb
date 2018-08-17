#frozen_string_literal: true.

class AddCreatedByToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :created_by_id, :integer
  end
end
