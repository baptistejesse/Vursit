class AddContentToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :content, :string
  end
end
