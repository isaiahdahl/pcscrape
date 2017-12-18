class Song < ApplicationRecord
  validates :sku, uniqueness: true
end
