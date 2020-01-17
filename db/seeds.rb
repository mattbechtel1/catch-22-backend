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
LOREM_IPSUM = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit nunc, molestie sit amet vestibulum quis, ultricies at eros. Suspendisse potenti. Aliquam at dolor tortor. Pellentesque viverra pharetra enim eu vulputate. Ut sodales odio eu malesuada rutrum. Aliquam a volutpat lectus. Maecenas efficitur risus mi, at volutpat elit ultricies non. Quisque malesuada, urna non faucibus ornare, justo ligula pellentesque lacus, ultricies dapibus justo eros a ex. Integer et maximus nisl. Phasellus feugiat iaculis nisl vitae condimentum. Curabitur imperdiet sodales est, in tristique libero fringilla eu. Phasellus eget euismod mi. Ut in aliquam enim. Sed scelerisque iaculis ante vitae viverra.'

DEFAULT_PARTNERS = [
    {name: 'Milo', description: LOREM_IPSUM, sanityChange: -2, sublist: 'special'},
    {name: 'Nately', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman'},
    {name: 'McWatt', description: LOREM_IPSUM, sanityChange: -3, sublist: 'airman'},
    {name: 'Orr', description: LOREM_IPSUM, sanityChange: -3, sublist: 'airman'},
    {name: 'Aarfy', description: LOREM_IPSUM, sanityChange: -5, sublist: 'airman'},
    {name: 'Appleby', description: LOREM_IPSUM, sanityChange: -1, sublist: 'airman'},
    {name: 'Clevinger', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman'},
    {name: 'Dunbar', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman'},
    {name: 'Snowden', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman'},
    {name: 'Sammy Singer', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman'},
    {name: 'Kraft', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman'},
    {name: 'Huple', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman'},
    {name: 'Nurse Duckett', description: LOREM_IPSUM, sanityChange: 3, sublist: 'storage'},
    {name: 'Young Recruit', description: LOREM_IPSUM, sanityChange: 0, sublist: 'storage'}
]

DEFAULT_PARTNERS.each {|partner| Character.create(partner)}

Character.all.each {|partner| GameCharacter.create(character: partner, game: yoyo)}