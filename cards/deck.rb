require 'squib'

#locations
locations_data = Squib.csv file: 'locations-data.csv'

Squib::Deck.new cards: locations_data['title'].size, 
      width: '3.5 in', height: '2.5 in', 
      layout: 'locations-layout.yml' do

  background color: 'white'

  text str: locations_data['title'], layout: 'title'
  text str: locations_data['description'], layout: 'description'

  save_png prefix: 'location'
end

#materials
materials_data = Squib.csv file: 'materials-data.csv'

Squib::Deck.new cards: materials_data['title'].size, 
      width: '2.5 in', height: '3.5 in', 
      layout: 'materials-layout.yml' do
        
  background color: 'white'

  text str: materials_data['title'], layout: 'title'
  text str: materials_data['description'], layout: 'description'

  save_png prefix: 'material'
end

#events
events_data = Squib.csv file: 'events-data.csv'

Squib::Deck.new cards: events_data['title'].size, 
      width: '2.5 in', height: '3.5 in', 
      layout: 'events-layout.yml' do
        
  background color: 'white'

  text str: events_data['title'], layout: 'title'
  text str: events_data['description'], layout: 'description'

  save_png prefix: 'event'
end