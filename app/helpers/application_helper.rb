module ApplicationHelper
  
   # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "ТеплоМаркет"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  # Returne all themes  
  def all_themes
    @themes = Theme.all
  end
  
  
  
end
