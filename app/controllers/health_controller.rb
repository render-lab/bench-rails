class HealthController < ApplicationController
  def index
    render json: { message: "Seed Rails app. Add routes, then ship it." }
  end

  def show
    ActiveRecord::Base.connection.execute("select 1")
    render json: { status: "ok", db: "up" }
  rescue StandardError
    render json: { status: "ok", db: "down" }, status: :internal_server_error
  end
end
