class AddUnitPerRateToTeachers < ActiveRecord::Migration[8.1]
  def change
    add_column :teachers, :unit_per_rate, :float
  end
end
