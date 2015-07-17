class AddAttachmentAvatarToDonantes < ActiveRecord::Migration
  def self.up
    change_table :donantes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :donantes, :avatar
  end
end
