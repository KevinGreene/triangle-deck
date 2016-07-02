require 'squib'

cards = Squib.csv file: 'cards.csv'

Squib::Deck.new(cards: cards['number'].size, layout: "layout.yml") do
  background color: :light_grey
  rect layout: 'cut'
  text str: cards['number'], layout: "number_ul"
  text str: cards['number'], layout: "number_lr"
  png file: cards['character'].map { |c|  "assets/#{c}.png"}, layout: cards['character']
  save format: :pdf, trim: 37.5
end
