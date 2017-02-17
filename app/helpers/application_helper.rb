module ApplicationHelper

  def dropdown_all_bands
    str = ""
    Band.all.each do |band|
      str << "<option value=\"#{band.id}\"><#{band.name}</option>"
    end
    str.html_safe
  end

end
