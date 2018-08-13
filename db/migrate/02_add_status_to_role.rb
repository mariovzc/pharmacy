# frozen_string_literal: true

# ADD STATUS TO ROLES

class AddStatusToRole < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :status, :boolean, default: true
  end
end
