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
  alfred:  'apennyworth@wayne-manor.com'
}

USER_SEEDS.each_pair do |(name, email)|
  User.find_or_create_by(name: name.to_s.titleize, email: email)
end
