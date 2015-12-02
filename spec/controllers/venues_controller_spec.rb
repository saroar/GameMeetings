require 'rails_helper'

RSpec.describe VenuesController, type: :controller do
  describe 'Venue#create' do
    context 'with valid attributes' do
      it 'create the game' do
        post :create, venue: attributes_for(:venue)
        expect(Venue.count).to eq(1)
      end

      it 'redirect to the "SHOW" action for new game' do
        post :create, venue: attributes_for(:venue)
        expect(Venue.count).to redirect_to Venue.first
      end
    end

    context 'with invalid attributes' do
      it 'does not create venue' do
        post :create, venue: attributes_for(:venue, address: '')
        expect(Venue.count).to eq(0)
      end

      it 're-renders to "new" view' do
        post :create, venue: attributes_for(:venue, address: '')
        expect(response).to render_template :new
      end
    end
  end

  describe 'Venue#index' do
    it 'show index' do
      venues = create_list(:venue, 3)
      get :index
      expect(assigns(:venues)).to eq(venues)
    end
  end

  describe 'Venue#show' do
    it 'show venue' do
      venue = create(:venue)
      get :show, id: venue
      expect(assigns(:venue)).to eq(venue)
    end
  end
end
