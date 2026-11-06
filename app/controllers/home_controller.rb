class HomeController < ApplicationController
  def index
    @students_by_year_level = Student.group(:year_level).count

    @students_by_department = Student
      .joins(:department)
      .group("departments.name")
      .count
  end
end