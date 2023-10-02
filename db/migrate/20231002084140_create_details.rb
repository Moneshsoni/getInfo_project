class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :title
      t.text :description
      t.string :refference

      t.timestamps
    end
  end
end
