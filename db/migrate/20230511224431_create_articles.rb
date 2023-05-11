class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :writer
      t.text :body
      t.datetime :publishedat
      t.text :tags
      t.string :slug
      t.datetime :updatedat
      t.text :updatedtext

      t.timestamps
    end
  end
end
