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

end
