class AddAttachmentAvatarToParliaments < ActiveRecord::Migration
  def self.up
    change_table :parliaments do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :parliaments, :avatar
  end
end
