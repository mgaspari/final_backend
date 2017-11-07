class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :street
      t.integer :zip_code
      t.string :state
      t.string :city
      t.bigint :phone_number
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
