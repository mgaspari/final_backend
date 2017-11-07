class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.integer :admin_id
      t.date :deal_day
      t.text :img_link
      t.text :description
      t.string :title
      t.text :address
      t.float :lng
      t.float :lat
      t.timestamps
    end
  end
end
