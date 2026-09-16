class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :sections, dependent: :destroy

  after_create :recalculate_teacher_salary
  after_destroy :recalculate_teacher_salary
  after_update :recalculate_salary_after_update

  private

  def recalculate_teacher_salary
    teacher&.recalculate_monthly_salary!
  end

  def recalculate_salary_after_update
    if saved_change_to_teacher_id?
      old_teacher = Teacher.find_by(id: teacher_id_before_last_save)
      old_teacher&.recalculate_monthly_salary!
    end

    if saved_change_to_teacher_id? || saved_change_to_number_of_units?
      teacher&.recalculate_monthly_salary!
    end
  end
end