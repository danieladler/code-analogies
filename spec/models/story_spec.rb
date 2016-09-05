require "rails_helper"

describe Story do
  # fixtures :story  # TODO: add fixtures
  let!(:story) { Story.create(technology: 'Ruby', comparison: 'English', explanation: 'It is easy to understand.')}

  describe ".validates" do
    context "when the 'technology' field is empty" do
      it "doesn't validate the story" do
        story.update(technology: nil)
        expect(story.valid?).to eq false
      end
    end

    context "when the 'comparison' field is empty" do
      it "doesn't validate the story" do
        story.update(comparison: nil)
        expect(story.valid?).to eq false
      end
    end

    context "when the 'explanation' field is empty" do
      it "doesn't validate the story" do
        story.update(explanation: nil)
        expect(story.valid?).to eq false
      end
    end
  end

  describe ".random_home_story" do
    # TODO: after fixtures are set up, make sure the returned instance is one of the stories from the fixture collection
    it "returns an instance of Story" do
      @home_story = Story.random_home_story
      expect(@home_story).to be_an_instance_of Story
    end
  end

end
