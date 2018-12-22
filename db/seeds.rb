# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default
# values. The data can then be loaded with the rails db:seed command (or created alongside the
# database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
USER_SEEDS = {
  batman:  'bwayne@wayne-corp.com',
  robin:   'tdrake@wayne-manor.com',
  batgirl: 'bgordon@gordon.org',
  alfred:  'apennyworth@wayne-manor.com',
  lucius: 'lfox@wayne-corp.com',
  leslie: 'lthompkans@gotham-clinic.org',
}
users      = []
USER_SEEDS.each_pair do |(name, email)|
  users.push User.find_or_create_by(name: name.to_s.titleize, email: email)
end

game = nil
['Testing Game', 'Finished Game'].each do |name|
  next if GameDatum.find_by_name name
  npi = users.map { |u| u.to_global_id.to_s }.sample(Game::PLAYER_COUNT)
  puts npi.inspect
  g = Games::StartGame.call name: name, new_player_ids: npi
  puts g.players.inspect
  puts g.errors
  game = g.game
end
puts game.inspect

game.update(finished_at: Time.now)

