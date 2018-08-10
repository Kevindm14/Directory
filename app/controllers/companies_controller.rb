class CompaniesController < ApplicationController
  before_action :set_company, except: [:index, :new, :create]
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def update
   if @company.update(company_params)
      redirect_to @company
    else
      render 'edit'
    end
  end

  def create 
    @company = Company.new(company_params)
    if @company.save
      redirect_to @company
    else
      render 'new'
    end
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(
      :name,
      :address,
      :city,
      :state,
      :commercial_activity,
      :cellphone,
      :phone
    )
  end
end
