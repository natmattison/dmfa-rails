class Painting < ActiveRecord::Base
  CATEGORIES = ['animal', 'landscape', 'portrait', 'still life']

  def sold?
    price == nil
  end

  def next
    Painting.where(category: category).where('created_at > ?', created_at).order(:created_at).first&.id
  end
  
  def previous
    Painting.where(category: category).where('created_at < ?', created_at).order(:created_at).last&.id
  end
end
