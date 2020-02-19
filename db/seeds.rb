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
User.destroy_all

yoyo = User.create(username: 'Yoyo', password: 'heller')

game_sample = Game.create(name: 'Yossarian',
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
    duckett: 'available',
    user: yoyo
)

DEFAULT_PARTNERS = [
    {name: 'Aarfy', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/9/98/Aarfy.jpg', description: "'Aarfy' Aardvark is a navigator who often gets lost during missions. He is oblivious to incoming incoming flak and anti-aircraft fire. Aarfy tries to suck up to the wealthy Nately in an attempt to climb socially.", sanityChange: -3, sublist: 'airman', occupation: 'Navigator', erraticness: 7},
    {name: 'Clevinger', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/0/03/Clevinger.jpg', description: 'Clevenger is an idealist member of the squardon. He believes in and defends the ideals of the United States.', sanityChange: 0, sublist: 'airman', occupation: 'Pilot', erraticness: 6},
    {name: 'Colonel Cathcart', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/1/17/Cathcart-profile.jpg', description: 'Colonel Cathcart is the commander of the squadron. He is goal-oriented and wishes to climb the U.S. Army heirarchy. He fears failure.', sanityChange: nil, sublist: 'special', occupation: 'Colonel', erraticness: 100},
    {name: 'Dobbs', image_url: 'https://static.tvtropes.org/pmwiki/pub/images/dobbs.png', description: "Dobbs has been at war for a while. His nerves are shot, and his flying is increasingly erratic. He will murder Colonel Cathcart; all you have to do is give him the go-ahead.", sanityChange: -2, erraticness: 8, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Doc Daneeka', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/c/c3/Daneeka.jpg', description: 'Doc Daneeka is the squadron flight surgeon. His main motivation is his own welfare. He is scared of flying, so he gets McWatt to list him on his flight logs. He blames the military for his getting drafted into the Air Corps.', sanityChange: nil, sublist: 'special', occupation: 'Medical Officer'},
    {name: 'Dunbar', image_url: 'https://static.tvmaze.com/uploads/images/medium_portrait/197/493917.jpg', description: "Dunbar has discovered that time moves slower when one is bored, and has therefore tried to extend his life by cultivating boredom.", sanityChange: 1, erraticness: 1, sublist: 'airman', occupation: 'Pilot'},
    {name: "Havermeyer", description: "Havermeyer lives in the tent next to yours. He has made a habit of flying dead straight over and past any target. He seems unstable, and shoots at mice at night.", sanityChange: -4, sublist: 'airman', occupation: 'Lead Bombardier', erraticness: 7},
    {name: 'Hungry Joe', description: "Hungry Joe is an unhinged member of the squadron, as evidenced by his frequent nightmares. He was formerly a photographer for Life magazine and enjoys taking photos of naked women.", sanityChange: -4, sublist: 'airman', occupation: 'Pilot', erraticness: 5},
    {name: 'Huple', description: 'Huple is only 15 years old and lied about his age to get into the army. He is an idealistic patriot.', sanityChange: -1, sublist: 'airman', erraticness: 5, occupation: 'Pilot'},
    {name: 'Major Major', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/3/34/Major_Major.png', description: "Some men are born mediocre, some men achieve mediocrity, and some men have mediocrity thrust upon them. With Major Major it had been all three. Even among men lacking all distinction he inevitably stood out as a man lacking more distinction than all the rest, and people who met him were always impressed by how unimpressive he was.", sanityChange: 0, sublist: 'airman', occupation: nil, erraticness: 1},
    {name: 'Major Major Major Major', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/3/34/Major_Major.png', description: "Major Major Major Major was recently promoted to Major due to a computer error. He doesn't like talking to anyone.", sanityChange: nil, sublist: 'storage', occupation: 'Major'},
    {name: 'Milo', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/e/ec/Milominderbinder.jpg', description: "Milo Minderbinder is the mess officer for the U.S. Army Air Force Base at Pianosa. He is also the brains behind the M&M Enterprises syndicate, in which 'everyone has a share'", sanityChange: nil, sublist: 'special', occupation: 'Mess Officer / Capitalist', erraticness: nil},
    {name: 'McWatt', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/d/da/McWatt.jpg', description: 'McWatt is a quiet and serene airman and an extremely capable pilot. His talent in the air leads him to experiment in non-combat situations, flying low to the ground and buzzing over the base.', sanityChange: -3, erraticness: 1, sublist: 'airman', occupation: 'Pilot'},
    {name: 'Nately', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/6/61/Nately-profile.jpg', description: "Edward J. Nately III comes from a very wealthy family. He enlisted in the air corps thinking the war would be over shortly and that he would be able to mingle with gentlemen. He is a a capable pilot. He has fallen head-over-heels in love with a prostitute in Rome, who cannot speak English, but he has plans to marry after the war.", sanityChange: -1, sublist: 'airman', occupation: 'Lieutenant', erraticness: 3},
    {name: "Nately's Whore", image_url: 'https://vignette.wikia.nocookie.net/catch22/images/3/35/Clara.jpg', description: "After informing her of her lover's death, she has set her sights on killing you.", sanityChange: nil, sublist: 'storage', occupation: 'Lady of the Night'},
    {name: 'Nurse Duckett', image_url: 'https://static.tvmaze.com/uploads/images/medium_portrait/197/493967.jpg', description: "She didn't like you at first, but now you are lovers. There are plenty of men around, so make sure to spend time with her and buy her gifts.", sanityChange: 3, sublist: 'storage', occupation: 'Nurse'},
    {name: 'Orr', image_url: 'https://vignette.wikia.nocookie.net/catch22/images/8/81/Orr.jpg/', description: "Orr is your roommate, whom you think is probably crazy. He has a habit of getting shot down over water during combat missions, but always surviving along with the rest of his crew.", sanityChange: -3, sublist: 'airman', erraticness: 1, occupation: 'Pilot'},
    {name: 'Recruit', description: nil, sanityChange: 0, sublist: 'storage', occupation: 'Pilot', erraticness: 3},
    {name: 'Snowden', image_url: 'https://static.tvtropes.org/pmwiki/pub/images/snowden_8.jpg', description: '...', sanityChange: 0, sublist: 'airman', occupation: 'Gunner', erraticness: 3},
]

DEFAULT_PARTNERS.each {|partner| Character.create(partner)}

Character.all.each {|partner| GameCharacter.create(character: partner, game: game_sample)}