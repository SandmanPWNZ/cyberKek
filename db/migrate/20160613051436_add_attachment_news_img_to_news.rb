class AddAttachmentNewsImgToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :news_img
    end
  end

  def self.down
    remove_attachment :news, :news_img
  end
end
