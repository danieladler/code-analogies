class HomeController < ApplicationController

  def index
    @home_story = Story.random_home_story
  end

end
