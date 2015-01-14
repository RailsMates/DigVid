class CreateFavoriteClips < ActiveRecord::Migration
  def change
    create_table :favorite_clips do |t|
      t.references :user, index: true
      t.references :clip, index: true

      t.timestamps null: false
    end
    add_foreign_key :favorite_clips, :users
    add_foreign_key :favorite_clips, :clips
  end
end
