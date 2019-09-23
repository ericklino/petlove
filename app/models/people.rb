class People < ApplicationRecord
  validates :name, :document, :date_born, presence: true

  has_many :animals

  def letter_a?
    self.name[0].upcase == 'A'
  end

  def credit_expired?
    self.animals.sum(:monthly) > 1000
  end

  def under_age?
    today = Date.current
    age = today.year - self.date_born.year - ((today.month > self.date_born.month || (today.month == self.date_born.month && today.day >= self.date_born.day)) ? 0 : 1)

    age < 18
  end
end
