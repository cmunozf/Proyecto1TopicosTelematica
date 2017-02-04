class Article < ApplicationRecord
	validates :nombre, presence: true
	validates :isbn, presence: true, uniqueness: true
end
