require 'rails_helper'

RSpec.describe 'Listing wines', type: :controller do
  scenario 'returns a message when there are no wines to view' do
    get '/wines'

    expect(response.status).to eq(200)
    expect(response.content_type).to eq(Mime::JSON) #may not be correct, may be Mime::JsonApi
  end
end
