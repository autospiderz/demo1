class ClientsController < ApplicationController
  require "redis"

  def show
    @client = Client.find(params[:id])
  end
  
  def new
    @client = Client.new
	@total = Client.all.count
	@client2 = Client.all 
  end

  def create
    @client = Client.new(params[:client])
    if @client.save
      # Handle a successful save.
	  #redis = Redis.new(:host => "", :port => "")
	  redis = Redis.new
	  redis.set @client.id, "ss"
	  redirect_to @client
	else
      redirect_to "/clients/new"
    end
  end
  
  def list
    @fname = params[:fname]
	@total = Client.where("first_name = ?", params[:fname]).count
  	@client = Client.where("first_name = ?", params[:fname])
  end
  
  def destroy
    Client.find(params[:ID]).destroy
    redirect_to("/")
  end

  def edit
     @client = Client.find(params[:ID])
	 @client.update_attribute("first_name", params[:first_name])
	 @client.update_attribute("last_name", params[:last_name])
	 @client.update_attribute("address", params[:address])
	 @client.update_attribute("phone_number", params[:phone_number])
	 @client.update_attribute("email", params[:email])
	 @client = Client.find(params[:ID])
  end
  
  
  
end
