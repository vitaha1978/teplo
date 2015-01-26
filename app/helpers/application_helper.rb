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
   Company.all.sample(4) 
  end
  
  # Returne random 3 companies
  def random_products
    Product.all.sample(3) 
  end
  
  # Returne random 3 companies
  def articles
    Product.all 
  end
  
  
  
end
