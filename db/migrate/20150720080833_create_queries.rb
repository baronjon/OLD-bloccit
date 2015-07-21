class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :title
      t.text :body
      t.boolean :resolved

      t.timestamps null: false
    end
  end
end
