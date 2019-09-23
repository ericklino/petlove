# README

## Questões
As questões devem ser respondidas com queries do ActiveRecord. Inclua os trechos de código que respondem as perguntas abaixo:


* **Qual é o custo médio dos animais do tipo cachorro?**\
 **R:** Animal.joins(:type_animal).where(type_animals: {name: 'Cachorro'}).average(:monthly)

* **Quantos cachorros existem no sistema?**\
 **R:** Animal.joins(:type_animal).where(type_animals: {name: 'Cachorro'}).count

* **Qual o nome dos donos dos cachorros (Array de nomes)**\
 **R:** Animal.joins(:type_animal, :people).where(:type_animals => {:name => 'Cachorro'}).pluck("people.name")

* **Retorne as pessoas ordenando pelo custo que elas tem com os animais (Maior para menor)**\
 **R:** People.joins(:animals).group('people.id').order('SUM(animals.monthly) ASC')

* **Levando em consideração o custo mensal, qual será o custo de 3 meses de cada pessoa?**\
 **R:** People.joins(:animals).group('people.id').pluck('SUM (animals.monthly) * 3')
