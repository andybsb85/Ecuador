class AddColumnVideoToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :video_url, :string
  end
end
