class PagesController < ApplicationController
  
  def index
 	user = FbGraph::User.fetch('matake')
  end
  
end
