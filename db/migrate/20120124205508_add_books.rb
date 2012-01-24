class AddBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.integer :rating
      t.integer :total_pages
      t.timestamps
    end
  end
end
