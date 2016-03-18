class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
    	t.integer :chapter_no
    	t.string  :chapter_name
    	t.integer :no_of_verses
    end
  end
end
