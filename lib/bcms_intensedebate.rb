require 'bcms_intensedebate/routes'
require 'bcms_intensedebate/intense_debate_comments_portlet_helper'
ActionView::Base.send(:include, IntenseDebateCommentsPortletHelper)
