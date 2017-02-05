class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :nombre
      t.string :isbn
      t.string :autor
      t.string :fecha
      t.string :editorial

      t.timestamps
    end
  end
end
