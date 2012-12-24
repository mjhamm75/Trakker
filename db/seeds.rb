# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if EagleRequiredMeritBadges.count == 0
  puts 'SETTING UP EAGLE REQUIRED'

  mb = EagleRequiredMeritBadges.create!(:name => 'First Aid')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Citizenship in the Community')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Citizenship in the Nation')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Citizenship in the World')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Communication')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Personal Fitness')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Emergency Preparedness')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Environmental Science')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Personal Management')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Swimming')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Camping')
  puts 'Merit Badge created: ' << mb.name

  mb = EagleRequiredMeritBadges.create!(:name => 'Family Life')
  puts 'Merit Badge created: ' << mb.name
end

if Scout.count == 0
  puts 'CREATING SCOUT'

  scout = Scout.create!(:name => "Jason Hamm")
  puts 'Scout Created: '  << scout.name

  scout.advancement = Advancement.new
  scout.advancement.boy_scout_rank = BoyScoutRank.new
  scout.advancement.tenderfoot_rank = TenderfootRank.new
  scout.advancement.second_class_rank = SecondClassRank.new
  scout.advancement.first_class_rank = FirstClassRank.new
  scout.advancement.star_rank = StarRank.new
  scout.advancement.life_rank = LifeRank.new
  scout.advancement.eagle_rank = EagleRank.new
  puts 'Ranks created'
end