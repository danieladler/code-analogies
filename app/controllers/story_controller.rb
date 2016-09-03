class StoryController < ApplicationController

  def index
    @home_story = Story.random_home_story
  end

  def all
    @stories = Story.all
  end

  def create
    @story             = Story.new
    @story.technology  = params[:technology]
    @story.comparison  = params[:comparison]
    @story.explanation = params[:explanation]
    if @story.save
      redirect_to story_path(@story.id)
    else
      raise # TODO - change to: render :new w/ save error
    end
  end

  def show
    @story = Story.find(params[:id])
  end

end
