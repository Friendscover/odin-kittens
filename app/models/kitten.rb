class Kitten < ApplicationRecord
  validates :name, presence: true, length: { in: 4..32 }
  validates :age, presence: true
  validates :cuteness, presence: true, length: { in: 1..10 }
  validates :softness, presence: true, length: { in: 1..10 }
end
