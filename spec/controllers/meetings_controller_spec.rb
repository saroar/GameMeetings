require 'rails_helper'

RSpec.describe MeetingsController, type: :controller do
  describe 'Meeting #create' do
    context 'with valid attributes' do
      it 'create Meeting' do
        post :create, meeting: attributes_for(:meeting)
        expect(Meeting.count).to eq(1)
      end

      it 'redirect to the "SHOW" action for new meeting' do
        post :create, meeting: attributes_for(:meeting)
        expect(Meeting.count).to redirect_to Meeting.first
      end
    end

    context 'with invalid attributes' do
      it 'does not create meeting' do
        post :create, meeting: attributes_for(:meeting, attributes: '')
        expect(Meeting.count).to eq(0)
      end

      it 're-renders the "SHOW" view' do
        post :create, meeting: attributes_for(:meeting, attributes: '')
        expect(response).to render_template :new
      end
    end
  end

  describe 'Meeting#index' do
    it 'show index' do
      meetings = create_list(:meeting, 1)
      get :index
      expect(assigns(:meetings)).to eq(meetings)
    end
  end

  describe 'Meeting#show' do
    it 'show meeting' do
      meeting = create(:meeting)
      get :show, id: meeting
      expect(assigns(:meeting)).to eq(meeting)
    end
  end
end
