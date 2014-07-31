class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :image_url
      t.text :description
      t.date :date
      t.text :place

      t.timestamps
    end
  end
end
