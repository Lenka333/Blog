require 'rails_helper'

RSpec.describe Article, type: :model do

	it 'is valid with more 5 or more characters' do
		article = Article.new(title: '34566')
		expect(article.valid?).to be(true)
	end

	it 'is not valid with less then 5 characters' do
		article = Article.new(title: 'fewe')
		#article.valid?
		expect(article.errors.message[:title]).to include("is too short (minimum is 5 characters)")
	end

	it 'is not valid without title' do
		article = Article.new(title: '')
		expect(article).to_not be_valid
	end
end