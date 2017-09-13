class ProgLanguagesController < ApplicationController
  before_action :set_values, only: [:show, :edit, :update, :destroy]
  def index
    @progLanguages= ProgLanguage.all
  end

  def show
    @progLanguage= ProgLanguage.find(params[:id])
    @errorMsgs = @progLanguage.error_msgs
  end

  def new
    @proglanguage = ProgLanguage.new
  end

  def create
    @progLanguage = ProgLanguage.new(get_values)

    if @progLanguage.save
      flash[:notice] = 'Done'
      redirect_to prog_languages_path(@progLanguage)
    else
      flash[:error] = @progLanguage.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @progLanguage= ProgLanguage.find(params[:id])
  end

  def update
    if @progLanguage.update(get_values)
      redirect_to @progLanguage
    else
      redirect_back fallback_location: prog_languages_path(@progLanguage)
    end
  end


  def destroy
    if @progLanguage.destroy
      redirect_to prog_languages_path
    else
      redirect_back fallback_location: @progLanguage
    end
  end

  private

  def get_values
    params.require(:prog_language).permit(:name, :description, :version)
  end

  def set_values
    @progLanguage = ProgLanguage.find(params[:id])
  end


end





















