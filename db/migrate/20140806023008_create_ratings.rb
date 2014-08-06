class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :stars, :default => 0
      t.belongs_to :destination, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
