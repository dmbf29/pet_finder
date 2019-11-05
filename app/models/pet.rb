class Pet < ApplicationRecord
  SPECIES = %w(cat turtle spider capybara owl)
  validates :location, presence: true
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - created_at.to_date).to_i
  end
end
