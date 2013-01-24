class DropTableBeersUsers < ActiveRecord::Migration
  def up
    drop_table :beers_users
  end

  def down
  end
end
