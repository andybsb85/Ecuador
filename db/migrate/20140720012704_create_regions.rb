class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.belongs_to :country
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
