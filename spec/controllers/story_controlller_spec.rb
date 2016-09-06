require 'rails_helper'

describe StoryController, type: :controller do
  let!(:story_1) { Story.create(id: 1, technology: 'Ruby', comparison: 'English', explanation: 'It is easy to understand.')}
  let!(:story_2) { Story.create(id: 2, technology: 'A', comparison: 'B', explanation: 'C')}

  describe "GET #index" do
    before do
      get :index
    end

    it "returns 200" do
      expect(response.status).to eq 200
    end

    it "samples a story object" do
      # TODO: change this to sample from fixtures, ensuring ID matches one of the IDs in the fixtures
      expect(assigns(:home_story)).to be_a Story
    end
  end

  describe "GET #new" do
    before do
      get :new
    end

    it "returns 200" do
      expect(response.status).to eq 200
    end
  end

  describe "GET #all" do
    before do
      get :all
    end

    it "returns 200" do
      expect(response.status).to eq 200
    end

    it "returns all instances of Story" do
      # TODO: change this condition to the # of stories in the fixture collection
      expect(assigns(:stories).count).to eq 2
    end
  end

  describe "GET #show" do
    before do
      story_1.update(id: 1)
      get :show, id: story_1.id
    end

    it "returns 200" do
      expect(response.status).to eq 200
    end

    it "returns the right instance of Story" do
      expect(assigns(:story).id).to eq 1
    end
  end

  describe "POST #create" do
    context "new Story is valid" do
      let(:make_request!) { post :create, params: { id: 3, technology: "X", comparison: "Y", explanation: "Z"} }

      it "increases count of all Stories by 1" do
        expect { make_request! }.to change { Story.all.count }.by(1)
      end

      it "redirects to that Story's view" do
        make_request!
        expect(response.status).to eq 302
      end
    end

    context "new Story is invalid because fields are empty" do
      let(:make_request!) {post :create, params: { technology: "", comparison: "", explanation: ""} }

      it "renders '/new' view" do
        make_request!
        expect(response).to render_template :new
      end

      it "returns a descriptive error message" do
        make_request!
        expect(flash[:notice]).to eq "All fields must be complete"
      end
    end
  end


end
