class CreateStckIts < ActiveRecord::Migration
  def change
    create_table :stck_its do |t|
      t.integer :user_id
      t.string :url
      t.integer :size

      t.timestamps
    end
  end
end
