class AddAttachmentImagenHoriToPages < ActiveRecord::Migration
  def self.up
    change_table :pages do |t|
      t.attachment :imagen_hori
    end
  end

  def self.down
    remove_attachment :pages, :imagen_hori
  end
end
