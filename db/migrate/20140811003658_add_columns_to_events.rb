class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :image_url_two, :string
    add_column :events, :image_url_three, :string
  end
end
