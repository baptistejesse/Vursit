class FixColumnName < ActiveRecord::Migration
  def change
      rename_column :videos, :type, :typical
   
  end
end
