class ApplicationRecord < ActiveRecord::Base
  #self.abstract_class = true
  def change
    create_table :heros do |t|
      t.string :name
      t.text :powers
      t.timestamp
    end
  end
end
