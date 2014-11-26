class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.integer :no_of_jobs
      t.text :description
      t.string :job_type
      t.text :academic_requirements
      t.text :experience
      t.text :additional_requirements
      t.string :job_location
      t.string :salary
      t.text :benefits
      t.string :job_source

      t.timestamps
    end
  end
end
