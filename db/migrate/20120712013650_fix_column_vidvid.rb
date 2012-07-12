class FixColumnVidvid < ActiveRecord::Migration
  def change
       rename_column :vidvids, :type, :typical

   end
end
