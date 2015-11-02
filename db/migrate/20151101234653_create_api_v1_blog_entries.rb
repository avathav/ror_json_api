class CreateApiV1BlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.references :blog, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.boolean :is_visible

      t.timestamps null: false
    end
  end
end
