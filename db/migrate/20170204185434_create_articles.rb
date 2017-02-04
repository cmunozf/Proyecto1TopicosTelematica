class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :nombre
      t.string :isbn

      t.timestamps
    end
  end
end
