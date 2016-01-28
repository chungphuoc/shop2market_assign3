class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
