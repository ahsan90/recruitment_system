class AddJobCategoryIdToVacancy < ActiveRecord::Migration
  def change
    add_column :vacancies, :job_category_id, :integer
    add_index :vacancies, :job_category_id
  end
end
