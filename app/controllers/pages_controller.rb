class PagesController < ApplicationController
  require 'fb_graph'
  
  def index
 	user = FbGraph::User.fetch('matake')
 	@name = user.name
 	@picture = user.picture
  end
  
end
