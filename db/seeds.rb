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
    leave: 0.5,
    passCount: 0,
    soundOn: true,
    timings: 4500,
    duckett: 'available'
)
LOREM_IPSUM = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit nunc, molestie sit amet vestibulum quis, ultricies at eros. Suspendisse potenti. Aliquam at dolor tortor.'

DEFAULT_PARTNERS = [
    {name: 'Milo', description: LOREM_IPSUM, sanityChange: -4, sublist: 'special', occupation: 'Mess Officer / Capitalist', erraticness: nil},
    {name: 'Aarfy', description: LOREM_IPSUM, sanityChange: -3, sublist: 'airman', occupation: 'Navigator', erraticness: 7},
    {name: 'Clevinger', description: LOREM_IPSUM, sanityChange: 0, sublist: 'airman', occupation: 'Pilot', erraticness: 6},
    {name: 'Dobbs', description: "Dobbs has been at war for a while. His nerves are shot, and his flying is increasingly erratic. He will murder Colonel Cathcart; all you have to do is give him the go-ahead.", sanityChange: -2, erraticness: 8, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Dunbar', description: "Dunbar has discovered that time moves slower when one is bored, and has therefore tried to extend his life by cultivating boredom.", sanityChange: 1, erraticness: 1, sublist: 'airman', occupation: 'Pilot'},
    {name: "Havermeyer", description: LOREM_IPSUM, sanityChange: -4, sublist: 'airman', occupation: 'Lead Bombardier', erraticness: 7},
    {name: 'Hungry Joe', description: "Hungry Joe is an unhinged member of the squadron, as evidenced by his frequent nightmares. He was formerly a photographer for <em>Life</em> magazine and enjoys taking photos of naked women.", sanityChange: -4, sublist: 'airman', occupation: 'Pilot', erraticness: 5},
    {name: 'Huple', description: 'Huple is only 15 years old and lied about his age to get into the army. He is an idealistic patriot.', sanityChange: 0, sublist: 'airman', erraticness: 5, occupation: 'Pilot'},
    {name: 'Major Major', description: "Some men are born mediocre, some men achieve mediocrity, and some men have mediocrity thrust upon them. With Major Major it had been all three. Even among men lacking all distinction he inevitably stood out as a man lacking more distinction than all the rest, and people who met him were always impressed by how unimpressive he was.", sanityChange: 0, sublist: 'airman', occupation: nil, erraticness: 1},
    {name: 'McWatt', description: 'McWatt is a quiet and serene airman and an extremely capable pilot. His talent in the air leads him to experiment in non-combat situations, flying low to the ground and buzzing over the base.', sanityChange: -3, erraticness: 1, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Nately', description: "Edward J. Nately III comes from a very wealthy family. He enlisted in the air corps thinking the war would be over shortly and that he would be able to mingle with gentlemen. He is a a capable pilot. He has fallen head-over-heels in love with a prostitute in Rome, who cannot speak English, but he has plans to marry after the war.", sanityChange: -1, sublist: 'airman', occupation: 'Lieutenant', erraticness: 3},
    {name: 'Orr', description: "Orr is your roommate, whom you think is probably crazy. He has a habit of getting shot down over water during combat missions, but always surviving along with the rest of his crew.", sanityChange: -3, sublist: 'airman', erraticness: 1, occupation: 'Pilot'},
    {name: 'Snowden', description: '', sanityChange: 0, sublist: 'airman', occupation: 'Gunner', erraticness: 3},
    {name: 'Major Major Major Major', description: "Major Major Major Major was recently promoted to Major due to a computer error. He doesn't like talking to anyone.", sanityChange: nil, sublist: 'storage', occupation: 'Major'},
    {name: 'Nurse Duckett', description: LOREM_IPSUM, sanityChange: 3, sublist: 'storage', occupation: 'Nurse'},
    {name: 'Recruit', description: nil, sanityChange: 0, sublist: 'storage', occupation: 'Pilot', erraticness: 3},
    {name: 'Doc Daneeka', description: LOREM_IPSUM, sanityChange: nil, sublist: 'special', occupation: 'Medical Officer'},
    {name: "Nately's Whore", description: LOREM_IPSUM, sanityChange: nil, sublist: 'storage', occupation: 'Lady of the Night'}
]

DEFAULT_PARTNERS.each {|partner| Character.create(partner)}

Character.all.each {|partner| GameCharacter.create(character: partner, game: yoyo)}