class AddTypeToVidvid < ActiveRecord::Migration
  def change
    add_column :vidvids, :type, :string
  end
end
