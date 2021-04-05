class Kitten < ApplicationRecord
  validates :name, presence: true, length: { in: 4..32 }
  validates :age, presence: true, numericality: { only_integer: true, less_than: 200 }
  validates :cuteness, presence: true, numericality: { only_integer: true, less_than: 10, greater_than: 0 }
  validates :softness, presence: true, numericality: { only_integer: true, less_than: 10, greater_than: 0 }
end
