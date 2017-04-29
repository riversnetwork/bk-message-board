require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  
  describe "Each comment" do
    
    let(:comment) {FactoryGirl.create(:comment)}
    
    it "should have some content" do
      expect(comment).to have_attributes(content: "This is content for a comment")
    end
    
    it "should have an id" do
      expect(comment).to have_attributes(id: 4567)
    end
    
    it "should be associated with a post id" do
      expect(comment).to have_attributes(post_id: 789)
    end
    
    it "should be associated with a user id" do
      expect(comment).to have_attributes(user_id: 5768)
    end
    
  end

end
