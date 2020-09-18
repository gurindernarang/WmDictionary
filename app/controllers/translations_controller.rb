class TranslationsController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @translation = Translation.new
  end

  def create
    key = translation_params["string_key"].strip! ? translation_params["string_key"].strip : translation_params["string_key"]
    if key
      key = key.downcase.gsub " ", "_"
      @translation = Translation.new({key: key, string_key: translation_params["string_key"]})
      if @translation.save
        redirect_to translations_path
      else
        render 'new'
      end
    end
  end

  def show

  end

  def translation_params
    params.require(:translation).permit(:string_key);
  end
end
