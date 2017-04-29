require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  
  describe "Each post" do
    
    let(:post) {FactoryGirl.create(:post)}
    
    it "should have a post title" do
      expect(post).to have_attributes(title: "The Post Title")
    end
    
    it "should have a post body" do
      expect(post).to have_attributes(body: "This is the body of the post")
    end
    
    it "should have an id" do
      expect(post).to have_attributes(id: 235)
    end
    
    it "should have a user_id" do
      expect(post).to have_attributes(user_id: 5768)
    end
  end

end
