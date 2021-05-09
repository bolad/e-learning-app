module ApplicationHelper
  include Pagy::Frontend

  def copyright_generator
    @copyright = BoladViewTool::Renderer.copyright 'Stanley Akyea', 'All rights reserved'
  end
end
