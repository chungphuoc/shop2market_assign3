class HomesController < ApplicationController
  def index
    if permit_params[:temperature].present?
      @results = Converter.celsius_to_fahrenheit(permit_params[:temperature].to_f)
    end
  end

  private
    def permit_params
      params[:temperature] = params[:temperature].to_s.gsub(',', '')
      params.permit(:temperature)
    end
end
