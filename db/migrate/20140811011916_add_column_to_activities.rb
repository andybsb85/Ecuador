class AddColumnToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :image_url_two, :string
    add_column :activities, :image_url_three, :string
    add_column :activities, :video_url, :string
  end
end
