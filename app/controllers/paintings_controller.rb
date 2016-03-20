class PaintingsController < ApplicationController
  
  def index
    @categories = Painting::CATEGORIES
    @paintings_by_category = {}

    @categories.each do |c|
      @paintings_by_category[c] = Painting.where(category: c)
    end

    render :index
  end
  
  def show
    @painting = Painting.find(params[:id])
    
    render :show
  end

end
