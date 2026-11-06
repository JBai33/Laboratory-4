class Teacher < ApplicationRecord
  belongs_to :department, counter_cache: true
  has_many :subjects, dependent: :destroy

  after_update :recalculate_monthly_salary!, if: :saved_change_to_unit_per_rate?

  def recalculate_monthly_salary!
    total_units = subjects.sum(:number_of_units)
    update_column(:monthly_salary, total_units * unit_per_rate.to_f)
  end

  def self.ransackable_attributes(_auth_object = nil)
  %w[name email specialization]
end

  def self.ransackable_associations(_auth_object = nil)
  %w[department subjects]
  end
end
