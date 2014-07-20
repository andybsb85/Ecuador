class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.text :geography
      t.text :weather
      t.text :time_zone
      t.text :visa_information
      t.text :population
      t.text :currency
      t.text :emergency_services
      t.text :transport

      t.timestamps
    end
  end
end
