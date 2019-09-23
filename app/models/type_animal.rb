class TypeAnimal < ApplicationRecord
  validates :name, presence: true

  has_many :animals

  def cat?
    self.name == 'Gato'
  end

  def swallow?
    self.name == 'Andorinha'
  end
end
