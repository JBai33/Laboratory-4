class Teacher < ApplicationRecord
  belongs_to :department, counter_cache: true
  has_many :subjects, dependent: :destroy
end
