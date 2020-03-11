class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :cinematography, :photography, :contact]

  def home
  end

  def cinematography
  end

  def photography
        @polaroids = Polaroid.all

  end

  def contact
  end

  def panchito
    @polaroids = Polaroid.all
  end

end
