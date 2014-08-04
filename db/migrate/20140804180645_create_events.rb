class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.belongs_to :city, index: true
      t.string :image_url
      t.text :summary
      t.text :description
      t.date :date
      t.text :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
