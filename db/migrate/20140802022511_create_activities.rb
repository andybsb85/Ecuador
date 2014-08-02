class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.belongs_to :city, index: true
      t.belongs_to :type_activity, index: true
      t.string :image_url
      t.text :summary
      t.text :description
      t.text :address
      t.float :latitude
      t.float :longitude
      t.text :website

      t.timestamps
    end
  end
end
