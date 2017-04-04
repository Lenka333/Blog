class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :notes, as: :noteable
	validates :title, presence: true, length: {minimum: 5}
end
