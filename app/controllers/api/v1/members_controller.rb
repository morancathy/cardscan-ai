# Rails uses ActiveRecord library to handle db related tasks. Connects classes to 
# relational db tables and provides API for workign with them

class Api::V1::MembersController < ApplicationController
  def index    
    # ActiveRecord querys the members table and fetches what exists in the db
    # all method provided by ActiveRecord, gets all members (ActiveRecord is the Schema)
    # order method, orders them in descending order by created date, gives newest memebers first
    # send list of members as JSON response with render
    member = Member.all.order(created_at: :desc)
    render json: member
  end

  def create
    # fetching all members relys on ActiveRecord to validate and save member details
    # create method assigns all controller parmas provided into the model at once.
    # Easy to create records, but opens possibility of malicious use. So we use 'strong parameters'
    member = Member.create!(member_params)
    if member
      render json: member
    else 
      render json: member.errors
    end
  end

  def show
    # check if member is returned by the member method and sent it as a JSON
    # response, or send error if not.
    if member
      render json: member
    else
      render json: member.errors
    end
  end

  def destroy
    # & is safe navigaton operator. It avoids nil errors when calling a method.
    # it deletes member only if it exits then send messge as response
    member&.destroy
    render json: {message: 'Member deleted!'}
  end

  #strong parameters -
    # params cant be assigned unless theyve been whitelisted. member_params is a private method where I whitelisted 
    # controller params to prevent bad content from getting into my db.
  private
  
  def member_params
    params.permit(:user_id, :group_number, :payer_name)
  end

  def member
    # uses ActiveRecord's find method to find a member whose id matches the id provided and 
    # assigns it to an instance variable @member. 
    @member ||=Member.find(params[:id])
  end
end