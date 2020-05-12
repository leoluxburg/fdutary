class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :cinematography, :photography, :contact, :records, :download_pdf]

  def home
  end

  def cinematography
  end

  def photography
    @polaroids = Polaroid.all
  end

  def records

  end

  def download_pdf
    send_file "#{Rails.root}/app/assets/records/naturecolorbyfranciscodutary.cube.zip", type: "application/zip", x_sendfile: true
  end

  def contact
  end

  def panchito
    @polaroids = Polaroid.all
  end

end
