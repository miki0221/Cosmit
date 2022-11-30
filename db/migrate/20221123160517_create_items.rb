class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :brand,              null: false
      t.string  :title,              null: false
      t.text    :content,            null: false
      t.integer :category_id,        null: false
      t.integer :category_option_id, null: false
      t.date    :start_date,         null: false
      t.timestamps
    end
  end
end
