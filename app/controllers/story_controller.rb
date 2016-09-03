class StoryController < ApplicationController

  def index
  end

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
      redirect_to root_path # change to: redirect to that story's :id page
    else
      raise # change to: render :new w/ save error
    end
  end

end
