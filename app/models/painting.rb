class Painting < ActiveRecord::Base
  CATEGORIES = ['animal', 'landscape', 'portrait', 'still life']

  def sold?
    price == nil
  end

  def next
    Painting.where('id > ?', self.id).pluck(:id).min
  end
  
  def previous
    Painting.where('id < ?', self.id).pluck(:id).max
  end
end
