class CreateCountryTranslations < ActiveRecord::Migration
  def self.up
    Country.create_translation_table!({
      :name => :string,
      :description => :text,
      :geography => :text,
      :weather => :text,
      :time_zone => :text,
      :visa_information => :text,
      :population => :text,
      :currency => :text,
      :emergency_services => :text,
      :transport => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Country.drop_translation_table! :migrate_data => true
  end
end
