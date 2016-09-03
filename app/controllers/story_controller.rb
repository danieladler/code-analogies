class StoryController < ApplicationController

  def all
    @stories = Story.all
    # logic to display all Stories will go here
  end

  def create
    @story             = Story.new
    @story.technology  = params[:technology]
    @story.comparison  = params[:comparison]
    @story.explanation = params[:explanation]
    if @story.save
      redirect_to story_path(@story.id)
    else
      raise # change to: render :new w/ save error
    end
  end

  def show
    @story = Story.find(params[:id])
  end

end
