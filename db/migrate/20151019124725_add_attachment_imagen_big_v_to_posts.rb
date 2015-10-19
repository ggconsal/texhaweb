class AddAttachmentImagenBigVToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :imagen_big_v
    end
  end

  def self.down
    remove_attachment :posts, :imagen_big_v
  end
end
