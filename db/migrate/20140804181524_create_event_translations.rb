class CreateEventTranslations < ActiveRecord::Migration
    def self.up
     Event.create_translation_table!({
      :name => :string,
      :summary => :text,
      :description => :text,
     
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Event.drop_translation_table! :migrate_data => true
  end
end
