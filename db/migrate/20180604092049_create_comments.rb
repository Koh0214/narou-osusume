class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :topic, foreign_key: true, limit: 500
      t.text :content
      t.integer :like

      t.timestamps
    end
  end
end
