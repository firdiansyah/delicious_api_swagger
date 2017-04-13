class Snack < ApplicationRecord
  enum status: [:active, :inactive]

  def self.restore
    snacks = [
              {id: 1, name: "Bika Ambon", description: "Delightful and very tasteful cake", origin: "Indonesia", pict_url: "http://bit.ly/2nIDpN1", price: "100000"},
              {id: 2, name: "Bolu Meranti", description: "Popular cake with various flavour", origin: "Indonesia", pict_url: "http://bit.ly/2or4C46", price: "100000"},
              {id: 3, name: "Kerak Telor", description: "One of Jakartas heritage, created from duck eggs, meat, and special herbs", origin: "Indonesia", pict_url: "http://bit.ly/2pcJcrx", price: "20000"},
              {id: 4, name: "Takoyaki", description: "Creamy octopus ball, eat that while hot", origin: "Japan", pict_url: "http://bit.ly/2ob3v6H", price: "100000"},
              {id: 5, name: "Onigiri", description: "Filled riced, the smells is good", origin: "Japan", pict_url: "http://bit.ly/2oaOfXA", price: "30000"}
             ]
    snacks.each do |snack|
      s = Snack.new(snack)
      s.save
    end
  end
end
