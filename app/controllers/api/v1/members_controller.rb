class Api::V1::MembersController < ApplicationController
  def index
    #all method provided by ActiveRecord, gets all members (ActiveRecord is the Schema)
    #order method, orders them in descending order by created date, gives newest memebers first
    # send list of members as JSON response with render
    member = Member.all.order(created_at: :desc)
    render json: member
  end

  def create
  end

  def show
  end

  def destroy
  end
end
