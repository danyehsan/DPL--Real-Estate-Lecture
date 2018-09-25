class Api::AgentsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    render json: Agent.unsold_homes
  end
end
