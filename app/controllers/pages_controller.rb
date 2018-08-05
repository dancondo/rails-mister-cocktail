class PagesController < ApplicationController

  def home
    @cocktails = Cocktail.order('id DESC').limit(4)
  end

end
