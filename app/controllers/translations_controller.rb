class TranslationsController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @translation = Translation.new
  end

  def create
    @translation = Translation.new(translation_params)
    if @translation.save
      redirect_to translations_path
    else
      render 'new'
    end
  end

  def show

  end

  def translation_params
    params.require(:translation).permit(:string_key);
  end
end
