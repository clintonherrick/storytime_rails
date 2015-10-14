class ContentsController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @content = @story.contents.new
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

  # def edit
  #
  # end
  #
  # def update
  #
  # end
  #
  # def destroy
  #
  # end

  private

  def content_params
    params.require(:content).permit(:line, :number)
  end
end
