# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(
  email: "petlove@petlove.com.br",
  password: "123456789",
  password_confirmation: "123456789"
)
puts "Usuário cadastro com sucesso"

TypeAnimal.create([
  {name: 'Cavalo'},
  {name: 'Cachorro'},
  {name: 'Iguana'},
  {name: 'Lhama'},
  {name: 'Papagaio'},
  {name: 'Ornitorrinco'}
])
puts "Tipos de Animais foram cadastrados"

def get_month(date)
  months = {"janeiro" => "Jan", "fevereiro" => "Feb", "março" => "Mar", "abril" => "Apr", "maio" => "May", "junho" => "Jun", "julho" => "Jul", "agosto" => "Aug", "setembro" => "Set", "outubro" => "Oct", "novembro" => "Nov", "dezembro" => "Dec"}

  month =  date.split('de')[1].gsub(" ", "")

  dob = Date.parse(date.gsub!("de", "").gsub!(month, months[month]))
end


People.create([
  {name: 'Johnny Cash', document: '555555555', date_born: get_month('26 de fevereiro de 1932') },
  {name: 'Sid Vicious', document: '555555555', date_born: get_month('10 de maio de 1957')},
  {name: 'Axl Rose', document: '555555555', date_born: get_month('6 de fevereiro de 1962')},
  {name: 'Joey Ramone', document: '555555555', date_born: get_month('19 de maio de 1951')},
  {name: 'Bruce Dickinson', document: '555555555', date_born: get_month('7 de agosto de 1958')},
  {name: 'Kurt Cobain', document: '555555555', date_born: get_month('20 de fevereiro de 1967')},
  {name: 'Elvis Presley', document: '555555555', date_born: get_month('17 de agosto de 2008')}
])
puts "Pessoas foram cadastradas"


#
Animal.create([
  {name: 'Pé de Pano', monthly: 199.99, type_animal: TypeAnimal.find_by_name('Cavalo'), people: People.find_by_name('Jhonny Cash'), skip_on_create_validation_seed: true},
  {name: 'Rex', monthly: 99.99, type_animal: TypeAnimal.find_by_name('Cachorro'), people: People.find_by_name('Sid Vicious'), skip_on_create_validation_seed: true},
  {name: 'Ajudante do Papai Noel', monthly: 99.99, type_animal: TypeAnimal.find_by_name('Cachorro'), people: People.find_by_name('Axl Rose'), skip_on_create_validation_seed: true},
  {name: 'Rex', monthly: 103.99, type_animal: TypeAnimal.find_by_name('Papagaio'), people: People.find_by_name('Joey Ramone'), skip_on_create_validation_seed: true},
  {name: 'Flora', monthly: 103.99, type_animal: TypeAnimal.find_by_name('Lhama'), people: People.find_by_name('Bruce Dickinson'), skip_on_create_validation_seed: true},
  {name: 'Dino', monthly: 177.99, type_animal: TypeAnimal.find_by_name('Iguana'), people: People.find_by_name('Kurt Cobain'), skip_on_create_validation_seed: true},
  {name: 'Lassie', monthly: 407.99, type_animal: TypeAnimal.find_by_name('Ornitorrinco'), people: People.find_by_name('Elvis Presley'), skip_on_create_validation_seed: true}
])
puts "Animais foram cadastrados"
