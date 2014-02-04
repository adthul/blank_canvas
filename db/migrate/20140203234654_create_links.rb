class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :category

      t.timestamps
    end
  end
end
