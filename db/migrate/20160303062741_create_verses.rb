class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.integer :docid
      t.string :c0book_code 
      t.text :c1title
      t.text :c2ptext
      t.timestamps null: true
    end
  end
end
