class ContactController < ApplicationController

  def index
  end

  def send_message
    name = params['name']
    email = params['email']
    body = params['body']
  end

end
