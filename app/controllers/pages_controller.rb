class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home]

  def home
  end

  def wedding
  end
  def contact
  end

  def maintenance
  end

  def transport
    @message = Message.new

  end
end
