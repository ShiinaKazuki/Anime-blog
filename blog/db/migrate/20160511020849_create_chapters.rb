class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :commenter
      t.text :body
      t.references :manga, index: true

      t.timestamps
    end
  end
end
