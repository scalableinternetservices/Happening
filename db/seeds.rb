# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

events = Event.create([
  { name: 'Cool Event',
    location: 'Cool Place',
    timestart: DateTime.new(2015, 11, 24, 13),
    timeend: DateTime.new(2015, 11, 24, 14),
    description: 'Coolest event ever.',
    host: 'Cool guy'
  },
  { name: 'Cool Event',
    location: 'Cool Place',
    timestart: DateTime.new(2015, 11, 24, 13),
    timeend: DateTime.new(2015, 11, 24, 14),
    description: 'Coolest event ever.',
    host: 'Cool guy'
  },
  { name: 'Cool Event',
    location: 'Cool Place',
    timestart: DateTime.new(2015, 11, 24, 13),
    timeend: DateTime.new(2015, 11, 24, 14),
    description: 'Coolest event ever.',
    host: 'Cool guy'
  },
  { name: 'Cool Event',
    location: 'Cool Place',
    timestart: DateTime.new(2015, 11, 24, 13),
    timeend: DateTime.new(2015, 11, 24, 14),
    description: 'Coolest event ever.',
    host: 'Cool guy'
  },
  { name: 'Cool Event',
    location: 'Cool Place',
    timestart: DateTime.new(2015, 11, 24, 13),
    timeend: DateTime.new(2015, 11, 24, 14),
    description: 'Coolest event ever.',
    host: 'Cool guy'
  },
  { name: 'Cool Event',
    location: 'Cool Place',
    timestart: DateTime.new(2015, 11, 24, 13),
    timeend: DateTime.new(2015, 11, 24, 14),
    description: 'Coolest event ever.',
    host: 'Cool guy'
  },
  { name: 'Cool Event',
    location: 'Cool Place',
    timestart: DateTime.new(2015, 11, 24, 13),
    timeend: DateTime.new(2015, 11, 24, 14),
    description: 'Coolest event ever.',
    host: 'Cool guy'
  },
  { name: 'Cool Event',
    location: 'Cool Place',
    timestart: DateTime.new(2015, 11, 24, 13),
    timeend: DateTime.new(2015, 11, 24, 14),
    description: 'Coolest event ever.',
    host: 'Cool guy'
  }])
