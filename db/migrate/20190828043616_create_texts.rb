class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :first
      t.string :second
      t.string :third
      t.string :forth
      t.string :fifth
      
      t.timestamps
    end
  end
end
