class Student < ApplicationRecord
  belongs_to :department, counter_cache: true
  has_many :classlists, dependent: :destroy
  has_many :sections, through: :classlists


  def self.ransackable_attributes(_auth_object = nil)
  %w[name program year_level]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[classlists department sections]
  end
end
