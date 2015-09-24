class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      # redirect_to root_url
      render :index
    else
      flash.now[:errors] = @tag.errors.full_messages
    end
  end

  def index
  end

  private

  def tag_params
    params.require(:tag).permit(:tag_name)
  end
end
