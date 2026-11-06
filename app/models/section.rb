class Section < ApplicationRecord
  belongs_to :subject, counter_cache: :section_count
  has_many :classlists, dependent: :destroy
  has_many :students, through: :classlists

  def display_name
    [ subject&.name, name ].compact_blank.join(" - ")
  end

  def self.ransackable_attributes(_auth_object = nil)
  %w[name room timeslot]
end

  def self.ransackable_associations(_auth_object = nil)
  %w[subject classlists students]
  end
end
