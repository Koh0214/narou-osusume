class AddNameToTopic < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :name, :string
  end
end
