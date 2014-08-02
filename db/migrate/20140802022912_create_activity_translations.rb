class CreateActivityTranslations < ActiveRecord::Migration
  def self.up
    Activity.create_translation_table!({
      :name => :string,
      :summary => :text,
      :description => :text,
     
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Activity.drop_translation_table! :migrate_data => true
  end
end
