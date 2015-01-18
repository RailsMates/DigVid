class CreateLikedClips < ActiveRecord::Migration
  def change
    create_table :liked_clips do |t|
      t.references :user, index: true
      t.references :clip, index: true

      t.timestamps null: false
    end
    add_foreign_key :liked_clips, :users
    add_foreign_key :liked_clips, :clips
  end
end
