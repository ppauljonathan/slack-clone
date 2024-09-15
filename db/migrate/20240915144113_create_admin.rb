class CreateAdmin < ActiveRecord::Migration[7.1]
  def change
    create_table :admins do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :first_name
      t.string :last_name
      t.string :password_digest

      t.timestamps
    end
  end
end
