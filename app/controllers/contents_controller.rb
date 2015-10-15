class ContentsController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @content = @story.contents.new
    @random_image = "#{rand(1..11)}" + ".png"   #this will generate a random image by calling a random number and appending a .png
  end

  def create
    @story = Story.find(params[:story_id])
    @content = @story.contents.new(content_params)
    if @content.save
      redirect_to story_path(@content.story)
    else
      render :new
    end
  end

  def edit
    @story = Story.find(params[:story_id])
    @content = @story.contents.find(params[:id])
  end

  def update
    @story = Story.find(params[:story_id])
    @content = @story.contents.find(params[:id])
    if @content.update(content_params)
      redirect_to story_path(@story)
    else
      render :edit
    end
  end

  def destroy
    @story = Story.find(params[:story_id])
    @content = @story.contents.find(params[:id])
    @content.destroy
    redirect_to story_path(@story)
  end

  private

  def content_params
    params.require(:content).permit(:line, :number, :image)
  end
end
