class VacanciesController < ApplicationController
  def index
    @vacancies = Vacancy.all
  end

  def new
    @category = JobCategory.all
    @vacancy = Vacancy.new
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)
    if @vacancy.save
      flash[:notice] = "New Vacancy has been posted successfully"
      render @vacancy
    else
      redirect_to 'new'
    end
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  def edit
    @category = JobCategory.all
    @vacancy = Vacancy.find(params[:id])
  end

  def update
    @vacancy = Vacancy.find(params[:id])
    if @vacancy.update(vacancy_params)
      flash[:notice] = "Updated successfully"
      redirect_to @vacancy
    else
      render edit
    end
  end

  def destroy
    Vacancy.find(params[:id]).destroy
    flash[:notice] = "Vacancy deleted successfully."
    redirect_to root_path
  end

  private

  def vacancy_params
    params.require(:vacancy).permit(:title, :no_of_jobs, :description,
    :job_type, :academic_requirements, :experience, :additional_requirements,
    :job_location, :salary, :benefits, :job_source, :job_category_id)
  end
end
