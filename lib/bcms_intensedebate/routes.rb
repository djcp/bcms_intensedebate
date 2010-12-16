module Cms::Routes
  def routes_for_bcms_intensedebate
    namespace(:cms) do |cms|
      #cms.content_blocks :intensedebates
    end  
  end
end
