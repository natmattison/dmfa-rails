class Painting < ActiveRecord::Base
  CATEGORIES = ['portrait', 'landscape', 'animal', 'still life', 'study', 'notecard']

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
