require 'rails_helper'
RSpec.describe ArticlesController, type: :controller  do
	describe 'GET #show' do
		it "assigns the requested article to @article" do
			article = create(:article) # same as rails consol> article =FactoryGirl.create :article
			get :show, id: article		
			expect(assigns(:article)).to eq article
		end

		it "renders the :show template" do
			article = create(:article)
			get :show, id: article 
			binding.pry
			expect(response).to render_template :show
			binding.pry
		end
	end
end