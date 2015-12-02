require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  describe 'Game#create' do
    context 'with valid attributes' do
      it 'create the game' do
        post :create, game: attributes_for(:game)
        expect(Game.count).to eq(1)
      end

      it 'redirect to the "show" action for new game' do
        post :create, game: attributes_for(:game)
        expect(Game.count).to redirect_to Game.first
      end
    end

    context 'with invalid attributes' do
      it 'does not create game' do
        post :create, game: attributes_for(:game, description: '' )
        expect(Game.count).to eq(0)
      end

      it 're-renders the "new" view' do
        post :create, game: attributes_for(:game, description: '' )
        expect(response).to render_template :new
      end
    end
  end

  describe 'Game#index' do
    it 'show index' do
      games = create_list(:game, 3)
      get :index
      expect(assigns(:games)).to eq(games)
    end
  end

  describe 'Game#show' do
    it 'shows game' do
      game = create(:game)
      get :show, id: game
      expect(assigns(:game)).to eq(game)
    end
  end
end
