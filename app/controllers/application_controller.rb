class ApplicationController < ActionController::Base
  def hello
    render html: 'Hi There!'
  end
end
