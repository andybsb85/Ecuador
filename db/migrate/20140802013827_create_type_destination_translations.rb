class CreateTypeDestinationTranslations < ActiveRecord::Migration
 def self.up
   TypeDestination.create_translation_table!({
      :name => :string,
     
    }, {
      :migrate_data => true
    })
  end

  def self.down
    TypeDestination.drop_translation_table! :migrate_data => true
  end
end
