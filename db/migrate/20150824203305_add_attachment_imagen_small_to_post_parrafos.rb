class AddAttachmentImagenSmallToPostParrafos < ActiveRecord::Migration
  def self.up
    change_table :post_parrafos do |t|
      t.attachment :imagen_small
    end
  end

  def self.down
    remove_attachment :post_parrafos, :imagen_small
  end
end
