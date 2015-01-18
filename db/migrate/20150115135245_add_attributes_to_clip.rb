class AddAttributesToClip < ActiveRecord::Migration
  def change
    add_column :clips, :name, :string
    add_column :clips, :confirmed, :boolean, default: false
    end
end
