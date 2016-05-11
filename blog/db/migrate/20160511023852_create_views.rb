class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.string :commenter
      t.text :body
      t.references :manga, index: true

      t.timestamps
    end
  end
end
