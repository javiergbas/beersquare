class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :country
      t.string :title

      t.timestamps
    end
  end
end
