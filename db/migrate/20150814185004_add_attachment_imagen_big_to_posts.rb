class AddAttachmentImagenBigToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :imagen_big
    end
  end

  def self.down
    remove_attachment :posts, :imagen_big
  end
end
