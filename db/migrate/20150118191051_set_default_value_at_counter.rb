class SetDefaultValueAtCounter < ActiveRecord::Migration
  def change
  	change_column :clips, :counter, :integer, default: 0
  end
end
