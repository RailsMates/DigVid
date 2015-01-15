class AddForeignKeyToClip < ActiveRecord::Migration
  def change
    add_reference :clips, :user, index: true
    add_foreign_key :clips, :users
  end
end
