class MedicinesController < ProtectedController
  before_action :medicine_params, only: [:create]
  before_action :set_medicine, only: [:destroy]

  def index
    @medicines = if params[:limit] == 'user'
      current_user.medicines
    else
      Medicine.all
    end

    render json: @medicines
  end

  def create
    @medicine = Medicine.build(medicine_params)

    if @medicine.save
      render json: @medicine, status: :created, location: @medicine
    else
      render json: @medicine.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @medicine.destroy

    head :no_content
  end

  def usermeds

  end

  private
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    def medicine_params
       params.require(:medicines).permit(:name, :unit_name, :notes)
    end
end
