class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.integer :zipcode
      t.integer :phone

      t.timestamps
    end
  end
end
