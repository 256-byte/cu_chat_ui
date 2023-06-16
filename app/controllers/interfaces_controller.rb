class InterfacesController < ApplicationController

  def index

  end

  def send_message
    render json: {answer: Interface.request(params)}
  end

end
