class Product < ActiveRecord::Base
  has_many :line_items
  
  before_detroy
   :ensure_not_referenced_by_any_line_item

  private 
  def ensure_not_referenced_by_any_line_item
	if line_items.empty?
		return true
	else
		errors.add(:base, 'Line Items Present')
		return false
	end
  end
  validates :title, :image_url, :description, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: {
  with: %r{\.(gif|jpg|png)$}i,
  message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
