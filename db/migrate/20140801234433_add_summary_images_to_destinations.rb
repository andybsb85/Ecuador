class AddSummaryImagesToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :image_url_two, :string
    add_column :destinations, :image_url_three, :string
    add_column :destinations, :summary, :text
  end
end
