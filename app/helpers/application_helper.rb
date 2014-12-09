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
  
  # Returne random 3 companies
  def random_companies
   Company.order("RAND()").limit(3)
  end
  
  
  
  
end
