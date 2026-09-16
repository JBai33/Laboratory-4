class Student < ApplicationRecord
  belongs_to :department, counter_cache: true
  has_many :classlists, dependent: :destroy
  has_many :sections, through: :classlists
end
