require 'squib'

cards = Squib.csv file: 'cards.csv'

Squib::Deck.new(cards: cards['number'].size, layout: "layout.yml") do
  rect layout: 'cut'
  text str: cards['number'] 
  save format: :pdf
end

