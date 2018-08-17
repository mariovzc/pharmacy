# frozen_string_literal: true

# ADD ROLE NAME
class AddRoleNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role_name, :string
  end
end
