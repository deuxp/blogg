class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      # attributes are automatically mapped to db columns
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
