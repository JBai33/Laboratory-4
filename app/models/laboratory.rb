class Laboratory < ApplicationRecord
  belongs_to :department, counter_cache: true

  def self.ransackable_attributes(_auth_object = nil)
  %w[name location]
end

  def self.ransackable_associations(_auth_object = nil)
  %w[department]
  end
end
