class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.text :content, limit: 50
      t.integer :like

      t.timestamps
    end
  end
end
