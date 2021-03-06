# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Dream.destroy_all
User.destroy_all

lucas =     User.create(email: 'lucas.boitier@gmail.com', password: 'lucasdream', name: 'Lucas', avatar_url: 'lucas.png')
nico =      User.create(email: 'nicolas.braun@gmail.com', password: 'nicolasdream', name: 'Nicolas', avatar_url: 'nico.png')
louis =     User.create(email: 'louis.lafon@gmail.com', password: 'louisdream', name: 'Louis', avatar_url: 'louis.png')
guillaume = User.create(email: 'guillaume.dore@gmail.com', password: 'guillaumedream', name: 'Guillaume', avatar_url: 'guillaume.png')

Dream.create( name: "Sombre instinct",                     description: "Une nuit sans lune, vous êtes perdu en forêt, seul. Vous n'avez aucun moyen de joindre un proche. Soudain, vous entendez quelque chose s'approcher de vous. Une silhouette se détache de l'ombre. Ecoutez votre instinct. Fuyez !",
              price: 12, transpiration_level: 3, category: "Cauchemar", owner: lucas, poster_url: 'poster_1.png')
Dream.create( name: "Océan de ténèbre",                    description: "Rien n'est plus drôle que le malheur des autres, disait Samuel Beckett. Cette nuit, c'est à votre tour de vivre une expérience… cauchemardesque.",
              price: 3, transpiration_level: 2, category: "Cauchemar", owner: lucas, poster_url: 'poster_2.png')
Dream.create( name: "Pourquoi pas moi ?",                  description: "Votre navire vient de faire naufrage au large des côtes. Vous êtes parvenu à monter à bord de votre radeau de survie. Malheureusement, cette mer est infestée de requins affamés par la surpêche. Ces derniers n'hésitent pas à s'en prendre à vous…",
              price: 3, transpiration_level: 3, category: "Aventure", owner: lucas, poster_url: 'poster_3.png')
Dream.create( name: "Voyage dans le temps",                description: "C'est bon ! La machine à voyager dans le temps vient (enfin) d'être inventée ! Voyagez à travers les âges et modifiez le passé et l'avenir à votre guise.",
              price: 23, transpiration_level: 2, category: "Aventure", owner: lucas, poster_url: 'poster_4.png')
Dream.create( name: "Les gants magiques",                  description: "Vous découvrez une paire de gants. Façonnez ce que vous avez toujours rêvé de créer !",
              price: 12, transpiration_level: 3, category: "Aventure", owner: nico, poster_url: 'poster_5.png')
Dream.create( name: "Révolution française",                description: "Vous êtes au cœur de la révolution française, en plein été 1789. Vous participez à la prise de la Bastille. Vous participez à cet événement majeur, qui a profondément marqué le paysage politique français, passant d'une monarchie à une République.",
              price: 15, transpiration_level: 1, category: "Historique", owner: nico, poster_url: 'poster_6.png')
Dream.create( name: "L'Amérique",                          description: "Alors qu'il cherchait à atteindre l'Asie par l'Ouest, l'explorateur génois Christophe Colomb découvre l'Amérique. Revivez ce moment historique à bord de la caravelle 'Santa Maria'.",
              price: 15, transpiration_level: 2, category: "Historique", owner: nico, poster_url: 'poster_7.png')
Dream.create( name: "Au plus haut de la Terre",            description: "Le 29 mai 1953, Edmund Hillary (à gauche) et le sherpa Tenzing Norgay atteignent le sommet de l'Everest, à 8 848 mètres d'altitude. Ils deviennent les premiers hommes à marcher sur la plus haute montagnene du monde. Et si vous preniez la place de l'un d'entre eux ?",
              price: 30, transpiration_level: 3, category: "Historique", owner: nico, poster_url: 'poster_8.png')
Dream.create( name: "Premier contact",                     description: "L'Humanité vient de faire sa première rencontre extraterrestre. Vous faites partie de l'équipe qui va  à leur rencontre pour la première fois. Vous souhaitez établir une relation pacifique avec eux, mais des mesures de précautions ont été prises...",
              price: 14, transpiration_level: 1, category: "Spatial", owner: nico, poster_url: 'poster_9.png')
Dream.create( name: "En orbite",                           description: "La Station Spatiale Internationale vous ouvre ses portes l'espace d'une nuit. 3.2.1. Décollage !",
              price: 40, transpiration_level: 2, category: "Spatial", owner: nico, poster_url: 'poster_10.png')
Dream.create( name: "Les abysses",                         description: "C'est un fait, nous connaissons mieux l'espace que les océans. Explorez les profondeurs à bord de l'Imperméable et découvrez de nouvelles espèces qui dépassent notre imagination.",
              price: 16, transpiration_level: 3, category: "Voyage", owner: nico, poster_url: 'poster_1.png')
Dream.create( name: "Les souliers magiques",               description: "La distance ne vous fait plus peur avec ces souliers magiques. Ils vous permettent de franchir les rivières, les lacs, les collines et  les montagnes. Attention à ne pas vous perdre, la tête dans les nuages.",
              price: 13, transpiration_level: 3, category: "Voyage", owner: guillaume, poster_url: 'poster_2.png')
Dream.create( name: "Je vole !",                           description: "Qui n'a pas déjà rêvé de voler ! Et bien, si ce n'est pas encore fait, ne perdez plus un instant !",
              price: 21, transpiration_level: 2, category: "Voyage", owner: guillaume, poster_url: 'poster_3.png')
