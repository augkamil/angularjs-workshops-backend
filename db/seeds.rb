# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(email: "info@briisk.co", password: "password", password_confirmation: "password")


akcja = Tag.create!(name: "akcja")
dokumentalny = Tag.create!(name: "dokumentalny")
dramat = Tag.create!(name: "dramat")
sci_fi = Tag.create!(name: "sci-fi")
horror = Tag.create!(name: "horror")
komedia = Tag.create!(name: "komedia")
kryminał = Tag.create!(name: "kryminał")
melodramat = Tag.create!(name: "melodramat")
musical = Tag.create!(name: "musical")
przygodowy = Tag.create!(name: "przygodowy")
sportowy = Tag.create!(name: "sportowy")
thriller = Tag.create!(name: "thriller")
western = Tag.create!(name: "western")
wojenny = Tag.create!(name: "wojenny")


m1 = Movie.create!(title: "Zielona mila", director: "Frank Darabont", description: "Emerytowany strażnik więzienny opowiada przyjaciółce o niezwykłym mężczyźnie, którego skazano na śmierć za zabójstwo dwóch 9-letnich dziewczynek.", release_date: Date.strptime("06/12/1999", "%d/%m/%Y"), time: 188, image_url: "http://1.fwcdn.pl/po/08/62/862/7517878.6.jpg")
m2 = Movie.create!(title: "Forrest Gump", director: "Robert Zemeckis", description: "Historia życia Forresta, chłopca o niskim ilorazie inteligencji z niedowładem kończyn, który staje się miliarderem i bohaterem wojny w Wietnamie.", release_date: Date.strptime("23/06/1994", "%d/%m/%Y"), time: 142, image_url: "http://1.fwcdn.pl/po/09/98/998/7314731.6.jpg")
m3 = Movie.create!(title: "Skazani na Shawshank", director: "Frank Darabont", description: "Adaptacja opowiadania Stephena Kinga. Historia niesłusznie skazanego na dożywocie bankiera, który musi przeżyć w brutalnym świecie rządzonym przez strażników i współwięźniów.", release_date: Date.strptime("10/09/1994", "%d/%m/%Y"), time: 142, image_url: "http://1.fwcdn.pl/po/10/48/1048/6925401.6.jpg")
m4 = Movie.create!(title: "Leon zawodowiec", director: "Luc Besson", description: "Płatny morderca ratuje dwunastoletnią dziewczynkę, której rodzina została zabita przez skorumpowanych policjantów.", release_date: Date.strptime("14/09/1994", "%d/%m/%Y"), time: 110, image_url: "http://1.fwcdn.pl/po/06/71/671/7016965.6.jpg")
m5 = Movie.create!(title: "Avatar", director: "James Cameron", description: "Jake, sparaliżowany były komandos, zostaje wysłany z misją na planetę Pandora. Na miejscu zaprzyjaźnia się z lokalną społecznością i postanawia jej pomóc.", release_date: Date.strptime("10/12/2009", "%d/%m/%Y"), time: 162, image_url: "http://1.fwcdn.pl/po/91/13/299113/7332755.6.jpg")
m6 = Movie.create!(title: "Gladiator", director: "Ridley Scott", description: "Generał Maximus - prawa ręka cesarza, szczęśliwy mąż i ojciec w jednej chwili traci wszystko. Jako niewolnik-gladiator musi walczyć na arenie o przeżycie.", release_date: Date.strptime("01/05/2000", "%d/%m/%Y"), time: 155, image_url: "http://1.fwcdn.pl/po/09/36/936/7472818.6.jpg")
m7 = Movie.create!(title: "Requiem dla snu", director: "Darren Aronofsky", description: "Historia czwórki bohaterów, dla których używki są ucieczką przed otaczającą ich rzeczywistością.", release_date: Date.strptime("14/05/2000", "%d/%m/%Y"), time: 102, image_url: "http://1.fwcdn.pl/po/91/36/9136/6908595.6.jpg")
m8 = Movie.create!(title: "Titanic", director: "James Cameron", description: "Rok 1912, brytyjski statek Titanic wyrusza w swój dziewiczy rejs do USA. Na pokładzie emigrant Jack przypadkowo spotyka arystokratyczną Rose.", release_date: Date.strptime("01/11/1997", "%d/%m/%Y"), time: 194, image_url: "http://1.fwcdn.pl/po/01/87/187/7451731.6.jpg")
m9 = Movie.create!(title: "Piraci z Karaibów: Klątwa Czarnej Perły", director: "Gore Verbinski", description: "Kowal Will Turner sprzymierza się z kapitanem Jackiem Sparrowem, by odzyskać swoją miłość - porwaną córkę gubernatora.", release_date: Date.strptime("28/06/2003", "%d/%m/%Y"), time: 143, image_url: "http://1.fwcdn.pl/po/73/09/37309/7515192.6.jpg")
m10 = Movie.create!(title: "Szósty zmysł", director: "M. Night Shyamalan", description: "Psycholog dziecięcy próbuje pomóc ośmioletniemu chłopcu widzącemu zmarłych poradzić sobie z tym niezwykłym darem.", release_date: Date.strptime("02/08/1999", "%d/%m/%Y"), time: 107, image_url: "http://1.fwcdn.pl/po/08/25/825/6901015.6.jpg")


TagList.create!(movie_id: m1.id, tag_id: dramat.id)
TagList.create!(movie_id: m2.id, tag_id: dramat.id)
TagList.create!(movie_id: m2.id, tag_id: komedia.id)
TagList.create!(movie_id: m3.id, tag_id: dramat.id)
TagList.create!(movie_id: m4.id, tag_id: dramat.id)
TagList.create!(movie_id: m4.id, tag_id: kryminał.id)
TagList.create!(movie_id: m5.id, tag_id: sci_fi.id)
TagList.create!(movie_id: m6.id, tag_id: dramat.id)
TagList.create!(movie_id: m7.id, tag_id: dramat.id)
TagList.create!(movie_id: m8.id, tag_id: melodramat.id)
TagList.create!(movie_id: m9.id, tag_id: przygodowy.id)
TagList.create!(movie_id: m10.id, tag_id: thriller.id)


Rate.create!(user_id: user.id, movie_id: m1.id, value: 8)
Rate.create!(user_id: user.id, movie_id: m2.id, value: 9)
Rate.create!(user_id: user.id, movie_id: m4.id, value: 7)
Rate.create!(user_id: user.id, movie_id: m5.id, value: 7)
Rate.create!(user_id: user.id, movie_id: m7.id, value: 8)
Rate.create!(user_id: user.id, movie_id: m8.id, value: 6)
Rate.create!(user_id: user.id, movie_id: m9.id, value: 7)


Comment.create!(user_id: user.id, movie_id: m2.id, body: "Nam luctus eros sed enim ornare, non tempor magna varius. Aenean orci massa, scelerisque sed blandit vel, hendrerit vel tortor. Aliquam erat volutpat. Proin ut justo euismod, sollicitudin mi eu, tristique nunc. Donec pellentesque diam leo, in ornare sapien fermentum ut. Sed quis neque cursus.")
Comment.create!(user_id: user.id, movie_id: m5.id, body: "Cras lacus ligula, tincidunt ac leo eget, dignissim aliquet nisl. Sed at dui dui. Nam sed facilisis odio. Pellentesque tristique massa vitae nibh facilisis tristique. Nullam nunc urna, aliquet ut feugiat non, rhoncus eget lorem. Nunc est enim, gravida id luctus vel, iaculis quis lacus. In volutpat accumsan congue. Nam laoreet dapibus tortor, et mattis ligula accumsan id. In non.")
Comment.create!(user_id: user.id, movie_id: m7.id, body: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla sollicitudin felis tempus, posuere lectus eu, interdum enim. Aenean vitae magna dolor. Cras vitae dictum purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur sit amet ullamcorper eros, quis vehicula orci.")
Comment.create!(user_id: user.id, movie_id: m8.id, body: "Nunc ac lorem neque. Fusce dignissim ante quis ultricies mattis. Duis et lacus lectus. Etiam rhoncus lacus id sem consectetur, vitae ultrices orci consequat. Nulla a lectus ac lacus euismod hendrerit. In dapibus purus vitae placerat porttitor. Duis ut dolor quis mauris venenatis tempor. Duis molestie, nibh sed porta scelerisque, est massa viverra lorem, ut malesuada mi magna nec quam. Phasellus convallis, lorem ac rutrum elementum, eros leo hendrerit sem.")














