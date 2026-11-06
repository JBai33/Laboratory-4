class Department < ApplicationRecord
    has_many :students, dependent: :destroy
    has_many :teachers, dependent: :destroy
    has_many :laboratories, dependent: :destroy

    def self.ransackable_attributes(_auth_object = nil)
    %w[name location]
end

    def self.ransackable_associations(_auth_object = nil)
    %w[students teachers laboratories]
    end
end