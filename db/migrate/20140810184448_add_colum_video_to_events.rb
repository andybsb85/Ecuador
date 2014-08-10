class AddColumVideoToEvents < ActiveRecord::Migration
  def change
    add_column :events, :video_url, :string
  end
end
