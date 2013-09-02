class CreateCommunitySpecifics < ActiveRecord::Migration
  def change
    create_table :community_specifics do |t|
      t.string :Content
      t.string :description

      t.timestamps
    end
  end
end
