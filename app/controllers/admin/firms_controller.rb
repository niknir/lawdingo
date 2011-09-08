class Admin::FirmsController < ApplicationController

  def new
    @lawyer = Lawyer.new
  end

  def create
    @lawyer = Lawyer.new(params[:lawyer])
    if @lawyer.save
      redirect_to root_path, :notice =>'Lawyer Added Successfully!'
    else
      render :action =>:new
    end
  end

  def edit
    begin
      @lawyer = Lawyer.find params[:id]
    rescue
      redirect_to root_path, :notice =>'No Lawyer Found!'
    end
  end

  def update
    @lawyer = Lawyer.find params[:id]
    if @lawyer.update_attributes(params[:lawyer])
      redirect_to root_path, :notice =>'Lawyer Updated Successfully!'
    else
      render :action =>:edit
    end
  end

  def destroy    
  end
  
end
