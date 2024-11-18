class CreateBuddies < ActiveRecord::Migration[7.2]
  def change
    create_table :buddies do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :price
      t.text :description
      t.string :skill
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
