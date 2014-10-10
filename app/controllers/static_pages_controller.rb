class StaticPagesController < ApplicationController
#http_basic_authenticate_with name: "vaesa", password: "secret", except: :index
  def home
  	render plain: "Everyone can see me!"
  end

  def help
  end

  def contracts
  	render plain: "I'm only accessible if you know the password"
  end
end

