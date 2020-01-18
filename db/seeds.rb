# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Game.destroy_all
Character.destroy_all
GameCharacter.destroy_all

yoyo = Game.create(name: 'Yossarian',
    dayCount: 0,
    money: 100,
    sanity: 50,
    flown: 10,
    goal: 40,
    injury: '',
    soundOn: true,
    timings: 'slow',
    duckett: 'available'
)
LOREM_IPSUM = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit nunc, molestie sit amet vestibulum quis, ultricies at eros. Suspendisse potenti. Aliquam at dolor tortor.'

DEFAULT_PARTNERS = [
    {name: 'Milo', description: LOREM_IPSUM, sanityChange: -2, sublist: 'special', occupation: 'Mess Officer / Capitalist'},
    {name: 'Nately', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman', occupation: 'Lieutenant'},
    {name: 'McWatt', description: LOREM_IPSUM, sanityChange: -3, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Orr', description: LOREM_IPSUM, sanityChange: -3, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Aarfy', description: LOREM_IPSUM, sanityChange: -5, sublist: 'airman', occupation: 'Navigator'},
    {name: 'Clevinger', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman', occupation: 'Pilot'},
    {name: "Havermeyer", description: LOREM_IPSUM, sanityChange: -5, sublist: 'airman', occupation: 'Lead Bombardier'},
    {name: 'Dunbar', description: LOREM_IPSUM, sanityChange: 1, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Kid Sampson', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Snowden', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman', occupation: 'Gunner'},
    {name: 'Hungry Joe', description: LOREM_IPSUM, sanityChange: -4, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Huple', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Dobbs', description: LOREM_IPSUM, sanityChange: -4, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Major Major Major', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman', occupation: nil},
    {name: 'Major Major Major Major', description: LOREM_IPSUM, sanityChange: nil, sublist: 'storage', occupation: 'Major'},
    {name: 'Nurse Duckett', description: LOREM_IPSUM, sanityChange: 3, sublist: 'storage', occupation: 'Nurse'},
    {name: 'Recruit', description: LOREM_IPSUM, sanityChange: 0, sublist: 'storage', occupation: 'Pilot'},
    {name: 'Doc Daneeka', description: LOREM_IPSUM, sanityChange: nil, sublist: 'special', occupation: 'Medical Officer'},
    {name: "Nately's Whore", description: LOREM_IPSUM, sanityChange: nil, sublist: 'storage', occupation: 'Lady of the Night'}
]

DEFAULT_PARTNERS.each {|partner| Character.create(partner)}

Character.all.each {|partner| GameCharacter.create(character: partner, game: yoyo)}