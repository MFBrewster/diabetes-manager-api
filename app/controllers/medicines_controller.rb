class MedicinesController < ProtectedController
  before_action :set_medicine, only: [:show, :update, :destroy]

  # GET /medicines
  # GET /medicines.json
  def index
    @medicines = Medicine.all

    render json: @medicines
  end

  # GET /medicines/1
  # GET /medicines/1.json
  def show
    render json: @medicine
  end

  # POST /medicines
  # POST /medicines.json
  def create
    @medicine = Medicine.new(medicine_params)

    if @medicine.save
      render json: @medicine, status: :created, location: @medicine
    else
      render json: @medicine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medicines/1
  # PATCH/PUT /medicines/1.json
  def update
    @medicine = Medicine.find(params[:id])

    if @medicine.update(medicine_params)
      head :no_content
    else
      render json: @medicine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medicines/1
  # DELETE /medicines/1.json
  def destroy
    @medicine.destroy

    head :no_content
  end

  private

    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    def medicine_params
      params[:medicine]
    end
end
