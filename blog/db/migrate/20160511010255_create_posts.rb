class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :commenter
      t.text :body
      t.references :secondseason, index: true

      t.timestamps
    end
  end
end
