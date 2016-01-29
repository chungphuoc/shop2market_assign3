class HomesController < ApplicationController
  def index
    @histories = History.all
    if permit_params[:temperature].present?
      @results = permit_params[:type_id] == "1" ? Converter.celsius_to_fahrenheit(permit_params[:temperature].to_f) :
        Converter.fahrenheit_to_celsius(permit_params[:temperature].to_f)
      @display_icon = params[:type_id] == "1" ? History::UNIT.last : History::UNIT.first
      History.create(content: "Convert #{permit_params[:temperature]} #{(History::UNIT - [@display_icon]).first} to #{@results} #{@display_icon}")
    end
  end

  private
    def permit_params
      params[:temperature] = params[:temperature].to_s.gsub(',', '')
      params.permit(:temperature, :type_id)
    end
end
