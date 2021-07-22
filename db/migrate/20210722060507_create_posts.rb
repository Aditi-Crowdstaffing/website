class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :content
      t.belongs_to :authors, index: true
      t.timestamps
    end
  end
end
