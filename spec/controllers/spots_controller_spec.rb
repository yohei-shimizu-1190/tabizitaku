require 'rails_helper'

describe SpotsController do
  
  describe 'GET #index' do
    it "@spotに正しい値が入っていること" do
      spots = create_list(:spot, 3)
      get :index
      expect(assigns(:spots)).to match(spots)
    end
    it "index.html.erbに遷移すること" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it "@spotに正しい値が入っていること" do
      spot = create(:spot)
      # ↓showについてHTTPはGETのためgetと記載し、paramsではURLバターンに必要なidを渡している
      get :show, params: { id: spot }
      expect(assigns(:spot)).to eq spot
    end
    it "@photoに正しい値が入っていること" do
      spot = create(:spot)
      get :show, params: { id: spot }
      expect(assigns(:photo)).to be_a_new(Photo)
    end
    it "show.html.erbに遷移すること" do
      spot = create(:spot)
      get :show, params: { id: spot }
      expect(response).to render_template :show
    end
  end

  describe 'GET #quiz' do
    it "quiz.html.erbに遷移すること" do
      get :quiz
      expect(response).to render_template :quiz
    end
  end

  describe 'GET #jmap' do
    it "jmap.html.erbに遷移すること" do
      get :jmap
      expect(response).to render_template :jmap
    end
  end

end