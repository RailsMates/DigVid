class CreateClipCategories < ActiveRecord::Migration
  def change
    create_table :clip_categories do |t|
      t.references :clip, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :clip_categories, :clips
    add_foreign_key :clip_categories, :categories
  end
end
