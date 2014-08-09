class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :article
      t.string :image_url

      t.timestamps
    end
  end
end
