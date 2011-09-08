class FirmsController < ApplicationController

  def index
    @lawyers = Lawyer.all
  end

end
