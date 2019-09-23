class Animal < ApplicationRecord
  attr_accessor :skip_on_create_validation_seed

  validates :name, :monthly, :type_animal, :people, presence: true

  validate :check_custom_animal
  validate :check_letter_animal
  validate :check_age_animal

  belongs_to :type_animal
  belongs_to :people

  def check_custom_animal
    unless skip_on_create_validation_seed
      if self.people.credit_expired?
        self.errors[:base] << "O Custo mensal por animal de #{self.people.name} foi excedido."
      end
    end
  end

  def check_letter_animal
    unless skip_on_create_validation_seed
      if self.people.letter_a? && self.type_animal.cat?
        self.errors[:base] << "#{self.people.name} não pode ter animais do tipo #{self.type_animal.name}, pois, seu nome começa com a letra 'A'."
      end
    end
  end

  def check_age_animal
    unless skip_on_create_validation_seed
      if self.people.under_age? && self.type_animal.swallow?
        self.errors[:base] << "#{self.people.name} não pode ter animais do tipo #{self.type_animal.name}, pois, ainda é menor que 18 anos."
      end
    end
  end

end
