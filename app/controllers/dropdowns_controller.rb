class DropdownsController < ApplicationController

  def populate_cities
    country = params[:country].downcase!
    province = params[:province].strip.downcase.gsub(' ', '')

    if country == "canada"
      @cities = MajorCanadianCity.find_all_by_province(province)  
    else country == "international"
      @cities = MajorUsCity.all    
    end

    render :partial => 'cities'
  end

  def populate_provinces
    country = params[:country].downcase!
   
    if country == "canada"
      @provinces = Province.all
      render :partial => 'provinces'
      return
    elsif country == "us"
      @states = UsState.all
      render :partial => 'states'
      return
    end

  end

end


