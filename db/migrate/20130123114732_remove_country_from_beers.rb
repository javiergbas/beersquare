class RemoveCountryFromBeers < ActiveRecord::Migration
  def up
    remove_column :beers, :country
  end

  def down
    add_column :beers, :country, :string
  end
end
