class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zip
      t.string :date
      t.string :time
      t.text :description
      t.string :img_url

      t.timestamps null: false
    end
  end
end
