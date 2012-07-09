class AddContentToVidvid < ActiveRecord::Migration
  def change
    add_column :vidvids, :content, :string
  end
end
