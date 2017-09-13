class ProgLanguagesController < ApplicationController

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
    @progLanguage = ProgLanguage.new(create_params)

    if @progLanguage.save
      flash[:notice] = 'Done'
      redirect_to prog_languages_path(@progLanguage)
    else
      flash[:error] = @progLanguage.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def create_params
    params.require(:prog_language).permit(:name, :description, :version)
  end

end





















