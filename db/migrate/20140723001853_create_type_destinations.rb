class CreateTypeDestinations < ActiveRecord::Migration
  def change
    create_table :type_destinations do |t|
      t.string :name

      t.timestamps
    end
  end
end
