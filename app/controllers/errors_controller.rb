class ErrorsController < ApplicationController
  def not_found
    render('errors/not_found', :status => 404)
    #flash[:notice] = "Oops, something went wrong and that action can't be done right now :("
  end

  def internal_server_error
    render('errors/internal_server_error', :status => 500)
    #flash[:notice] = "Oops, something went wrong and that action can't be done right now :("
  end
end
