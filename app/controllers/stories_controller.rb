class StoriesController < ApplicationController

  def index
    @stories = Story.all
    render :index
  end

  def new
    @story = Story.new
    render :new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      flash[:notice] = "New Story Added!"
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  def show
    @story = Story.find(params[:id])
    @sentence = @story.sentences.new
    render :show
  end

  private
  def story_params
    params.require(:story).permit(:title, :author, :image)
  end

end
