class CreateSunnahs < ActiveRecord::Migration[7.0]
  def change
    create_table :sunnahs do |t|
      t.text :hadith
      t.string :status
      t.string :book
      t.string :volume
      t.text :isnad
      t.text :adalah
      t.text :irsal
      t.text :tawatur
      t.text :matn
      t.text :asbabalwurud
      t.text :tags
      t.string :slug

      t.timestamps
    end
  end
end
