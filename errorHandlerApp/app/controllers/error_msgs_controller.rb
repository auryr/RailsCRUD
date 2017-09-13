class ErrorMsgsController < ApplicationController
  def index
    @errorMsgs = ErrorMsg.all
  end

  def show
    @errorMsg = ErrorMsg.find(params[:id])
  end

end
