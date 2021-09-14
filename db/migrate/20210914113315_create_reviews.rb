class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :location
      t.string :accommodation
      t.text :details

      t.timestamps
    end
  end
end
