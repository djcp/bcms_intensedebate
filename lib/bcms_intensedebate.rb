require 'bcms_intensedebate/routes'
ActionView::Base.class_eval{ 
  include IntenseDebateCommentsPortletHelper
}
