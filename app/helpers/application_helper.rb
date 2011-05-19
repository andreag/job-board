# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def job_type_options
    options_for_select([
      ["Full Time", "Full Time"],
      ["Part Time", "Part Time"],
      ["Part Time/Fulltime", "Part-time/Full-time"],
      ["Contract", "Contract"],
      ["Other", "Other"]
    ])
  end

  def countries_dropdown_options
    countries = Country.all
    options = ""
    countries.each do |c|
      options += "<option>" + c.country + "</option>"
    end
    options 
  end
  
  def required_field
    "<span class='required' style='position: relative; top: 3px;'>*</span>"
  end

end
