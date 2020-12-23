class RequestsController < ApplicationController
  def top
   @requests=Request.all
  end
end
