class Author < ApplicationRecord
  has_one :biography
  has_many :books, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :age, presence: true
  validates :age, numericality: true

  # class method
  def self.count_total_books_by_all_authors
    self.all.collect do |author|
      author.books.size
    end.inject(:+)
  end

  # instance method
  def find_author_books
    Book.where("author_id = ?", self.id)
  end
end
