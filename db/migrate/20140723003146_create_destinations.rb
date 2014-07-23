class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.belongs_to :city, index: true
      t.belongs_to :type_destination, index: true
      t.string :image_url
      t.text :description
      t.text :address
      t.text :phone
      t.text :website

      t.timestamps
    end
  end
end
