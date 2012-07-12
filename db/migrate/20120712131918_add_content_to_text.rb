class AddContentToText < ActiveRecord::Migration
  def change
       change_column :vidvids, :content, :text
       change_column :videos, :content, :text
   end
end
