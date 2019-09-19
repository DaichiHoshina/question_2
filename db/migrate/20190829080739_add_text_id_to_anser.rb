class AddTextIdToAnser < ActiveRecord::Migration[5.2]
  def change
    add_column :ansers, :text_id, :integer
  end
end
