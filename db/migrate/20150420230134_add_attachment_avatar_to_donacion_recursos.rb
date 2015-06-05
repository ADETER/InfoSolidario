class AddAttachmentAvatarToDonacionRecursos < ActiveRecord::Migration
  def self.up
    change_table :donacion_recursos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :donacion_recursos, :avatar
  end
end
