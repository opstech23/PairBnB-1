class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.bigint  :user_id
      t.string  :country
      t.string  :state
      t.text  :address
      t.integer :price
      t.integer :max_guests
      t.timestamps
    end
  end
end
