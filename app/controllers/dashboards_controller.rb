# app/controllers/dashboards_controller.rb
class DashboardsController < ApplicationController
  def show
  end

  def bmi_calculator
  end

  def calculate_bmi
  end

  def show
    @next_appointment = Appointment.where('date >= ?', Date.today).order(:date, :hour).first
    @last_meal = Refeico.last
  end
end
