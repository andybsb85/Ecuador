class CreateDestinationsTranslations < ActiveRecord::Migration
  def self.up
    Destination.create_translation_table!({
      :name => :string,
      :summary => :text,
      :description => :text,
     
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Destination.drop_translation_table! :migrate_data => true
  end
end
