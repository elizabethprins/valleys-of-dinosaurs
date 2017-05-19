class Dinosaur < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true, uniqueness: true
  validates :age, presence: true

  def self.order_by_name
    order(:name)
  end

  def is_baby?
    age < 3
  end

end
