class CreateLayers < ActiveRecord::Migration[5.1]
  def change
    create_table :layers do |t|
      t.string :title
      t.string :category
      t.string :year
      t.string :owner
      t.string :format
      t.string :position
      t.string :cadastralize
      t.text :description


      t.timestamps
    end
  end
end
