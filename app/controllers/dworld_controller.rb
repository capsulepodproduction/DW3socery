class DworldController < ApplicationController
  def home
  end

  def about
  end

  def portfolio
  end

  def news
  end

  def contact
    @name = params[:Name]
    @email = params[:"Email Address"]
    @question = params[:Questions]
    
    if params[:commit]
      flash.now[:error] = ""
      if @name.nil? || @name.empty?
        flash.now[:error] << "Please enter Name.</br>"
      end
      if @email.nil? || @email.empty?
        flash.now[:error] << "Please enter Email.</br>"
      end
    end
  end
end