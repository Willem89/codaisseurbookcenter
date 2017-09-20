class Author < ApplicationRecord
  has_many :books, dependent: :destory
end
