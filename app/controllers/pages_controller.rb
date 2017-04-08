class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :maintenance ]

  def home
  end

  def wedding
  end
  def contact
    @information
  end

  def maintenance
    @message
  end
end
