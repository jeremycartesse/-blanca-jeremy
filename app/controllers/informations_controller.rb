class InformationsController < ApplicationController
  def new
    @information = Information.new
  end

  def create
    @information = current_user.informations.build(information_params)
    if @information.save
      InformationMailer.creation_confirmation(@information).deliver_now
      redirect_to wedding_path(@information)
    else
      render :new
    end
  end

  private

  def information_params
    params.require(:information).permit(:subject, :message, :type_message)
  end
end
