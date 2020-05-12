module ApplicationHelper
  # Render the markup for a feather icon
  # @param icon_name [String] The name of the icon
  def feather_icon(icon_name)
    html = "<i data-feather=".html_safe
    html << icon_name
    html << "></i>".html_safe
    return html
  end
end
