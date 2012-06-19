class CreateVidvids < ActiveRecord::Migration
  def change
    create_table :vidvids do |t|
      t.integer :video_id
      t.integer :user_id
      t.string :viddy1
      t.string :title1

      t.timestamps
    end
  end
end
