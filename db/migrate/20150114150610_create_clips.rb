class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :URL
      t.integer :counter

      t.timestamps null: false
    end
  end
end
