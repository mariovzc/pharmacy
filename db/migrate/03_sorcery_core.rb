class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email,            :null => false, unique: true
      t.string :crypted_password
      t.string :salt

      t.references :role, foreign_key: true

      t.string :first_name
      t.string :last_name
      t.string :document, unique: true
      t.boolean :status, default: true

      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
  end
end
