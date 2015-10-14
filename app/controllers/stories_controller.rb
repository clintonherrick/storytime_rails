class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to stories_path
    else
      render :new
    end
  end

  # def edit
  #
  # end
  #
  # def update
  #
  # end

  private

  def story_params
    params.require(:story).permit(:title, :image)
  end

end
