class Address < ApplicationRecord
  belongs_to :property

  def self.cost_by_city
    select("DISTINCT city, 
            STRING_AGG(price AS VARCHAR, ',' ORDER BY price DESC) AS prices, 
            COUNT(*) price")
  end
end
