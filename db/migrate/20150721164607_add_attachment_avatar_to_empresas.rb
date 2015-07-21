class AddAttachmentAvatarToEmpresas < ActiveRecord::Migration
  def self.up
    change_table :empresas do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :empresas, :avatar
  end
end
