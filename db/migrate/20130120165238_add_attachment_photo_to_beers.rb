class AddAttachmentPhotoToBeers < ActiveRecord::Migration
  def self.up
    change_table :beers do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :beers, :photo
  end
end
