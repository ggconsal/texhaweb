class AddAttachmentImagenVertToPages < ActiveRecord::Migration
  def self.up
    change_table :pages do |t|
      t.attachment :imagen_vert
    end
  end

  def self.down
    remove_attachment :pages, :imagen_vert
  end
end
