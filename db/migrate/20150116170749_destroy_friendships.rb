class DestroyFriendships < ActiveRecord::Migration
  def change
  	drop_table :friendships
  end
end
