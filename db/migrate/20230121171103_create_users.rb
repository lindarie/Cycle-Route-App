class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.date :birth_date
      t.string :password_digest
      t.string :email
      t.text :description, :null => true
      t.string :role, :default => "authorized"

      t.timestamps
    end
  end
end
