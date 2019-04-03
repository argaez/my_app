class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.boolean :subscribed
      t.string :address
      t.decimal :price

      t.timestamps
    end
  end
end
