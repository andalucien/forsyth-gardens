class MainController < ActionController::Base
  
  layout 'application'
  
  before_filter :set_navlinks
  
  def home
    @image_height = 275
    @horizontal_images = true
    @strip_images = %w(ltainen_butterfly steel ward_pear kitchen_garden fox_container)
    @subtitles = ["Ecological Garden Design", "Edible Landscaping", "Permaculture"]
    @skip_in_philly = true
  end
  
  def bio
    @strip_images = %w(phil usbg_phil wyckoff_phil)
    @subtitles = ["Biography of Phil Forsyth"]
    @skip_in_philly = true
  end
  
  def professional_design
    @horizontal_images = true    
    @strip_images = %w(steel_2 abbott_planting brown_per hill goldstein_layout)
    @subtitles = ["Professional Design"]
  end
  
  def ecological_gardens
    @horizontal_images = true    
    @strip_images = %w(ltainen_butterfly fox_border ltainen_woodland_garden ward_patio fox_raised_border)    
    @subtitles = ["Ecological Gardens"]
  end
  
  def fruit_growing
    @subtitles = ["Fruit Growing"]
  end
  
  def edible_landscaping
    @horizontal_images = true    
    @strip_images = %w(usbg_fig kitchen_garden ward_garden ward_pear_and_patio wyckoff_scarecrow)
    @subtitles = ["Edible Landscaping"]
  end
  
  def container_gardens
    @horizontal_images = true    
    @strip_images = %w(ward_containers fox_container_4 fox_container_2 ward_containers_and_garden fox_container_1)
    @subtitles = ["Container Gardens"]
  end
    
  def locavore_garden_service
    @horizontal_images = true    
    @strip_images = %w(usbg_fig kitchen_garden ward_garden ward_pear_and_patio wyckoff_scarecrow)  
    @subtitles = ["Locavore Garden Service"]
  end
  
  def permaculture
    @subtitles = ["Permaculture"]
  end
  
  def contact_us
    @strip_images = %w(phil)
    @subtitles = ["Contact Us"]
    @skip_in_philly = true
  end
  
  
  private

  def set_navlinks
    @navlinks = %w(
      home 
      bio 
      professional_design
      ecological_gardens
      edible_landscaping
      container_gardens
      locavore_garden_service
      permaculture
      fruit_growing
      contact_us
    )
  end
  
end
