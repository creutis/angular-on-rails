require 'rails_helper'

describe Api::V1::TodosController do

	describe "GET 'index' " do
		it "returns a successful 200 response" do
			get :index, format: :json
			expect(response).to be_success
		end

		it "returns all todos" do
			FactoryGirl.create_list :todo, 5
			#FactoryGirl.create_list(:todo, 5)
			get :index, format: :json
			parsed_response = JSON.parse(response.body)
			expect(parsed_response.length).to eq 5
			#xpect(parsed_response['todo'].length).to eq(5)
		end
	end

end