class CreateLineDestinations < ActiveRecord::Migration
  def change
    create_table :line_destinations do |t|
      t.references :destination, index: true
      t.belongs_to :plan, index: true

      t.timestamps
    end
  end
end
