class TransportsController < ApplicationController
  def index
    @transports = Transport.all
  end

  def show
    @transport = Transport.find(params[:id])
  end

  def new
    @transport = Transport.new
  end

  def create
    @transport = Transport.new(transport_params)
    @transport.user_id = current_user.id
    if @transport.save
      redirect_to transports_path
    else
      render :new
    end
  end

  def edit
    @transport = Transport.find(params[:id])
  end

  def update
    @transport = Transport.find(params[:id])
    if @transport.update(transport_params)
      redirect_to transport_path
    else
      render :edit
    end
  end

  def destroy
    @transport = Transport.find(params[:id])
    @transport.destroy
    redirect_to transports_path
  end

  def transport_params
    params.require(:transport).permit(:depart, :return, :kind, :t_message, :place_number)
  end
end
