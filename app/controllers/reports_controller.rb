class ReportsController < ApplicationController

  def home
    @reports = Report.all

    @markers = @reports.geocoded.map do |report|
      {
        lat: report.latitude,
        lng: report.longitude
      }
    end
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)

    if @report.save
      redirect_to @report
    else
      render :new
  end

  def edit
  end

  def udpate
  end

  def destroy
  end

  private

  def report_params
    params.require(:report).permit(:title, :description, :date, :location, :organizer, :purpose, :active)
  end
end
