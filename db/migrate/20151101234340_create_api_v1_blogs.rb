class CreateApiV1Blogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :decrtiption
      t.boolean :is_visible
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
