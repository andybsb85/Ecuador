class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.belongs_to :region, index: true
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
