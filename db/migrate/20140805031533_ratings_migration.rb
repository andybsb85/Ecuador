class RatingsMigration < ActiveRecord::Migration
 def change
    create_table :ratings do |t|
      t.integer :stars, :default => 0
      t.references :destination
      t.references :user
    end
  end
end
