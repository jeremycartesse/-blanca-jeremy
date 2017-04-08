class InformationsController < ApplicationController
  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    @information.user_id = current_user.id
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
