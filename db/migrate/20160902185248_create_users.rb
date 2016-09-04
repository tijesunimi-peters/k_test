class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, uniqueness: true
      t.string :password_digest
      t.string :remember_token
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
