require 'squib'

cards = Squib.csv file: 'cards.csv'

Squib::Deck.new(cards: cards['number'].size) do
  text str: cards['number'] 
  save format: :pdf
end

