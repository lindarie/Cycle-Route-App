class CreateTrails < ActiveRecord::Migration[7.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :surface
      t.integer :complexity, :null => true
      t.text :comment, :null => true
      t.references :user, index: true
      t.timestamps
    end
  end
end
