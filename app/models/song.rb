require 'csv'

class Song < ApplicationRecord
  validates :sku, uniqueness: true

  def self.to_csv(options = {})
    desired_columns = ["sku", "title", "artist", "keyword", "notation", "url"]
    CSV.generate(options) do |csv|
      csv << desired_columns
      all.each do |product|
        csv << product.attributes.values_at(*desired_columns)
      end
    end
  end
end
