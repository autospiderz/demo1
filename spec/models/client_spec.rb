require 'spec_helper'

describe Client do


  before(:each) do
    @attr = { 
	   :first_name => "FN", 
	   :last_name => "LN",
	   :address => "Where",
	   :phone_number => "()-",
	   :email => "user@example.com" }
  end

  it "should create a new instance given valid attributes" do
    Client.create!(@attr)
  end

  it "should require a first_name" do
    no_first_name_user = Client.new(@attr.merge(:first_name => ""))
    no_first_name_user.should_not be_valid
  end

  it "should require a last_name" do
     no_last_name_user = Client.new(@attr.merge(:last_name => ""))
	 no_last_name_user.should_not be_valid
  end

  it "should require an address" do
     no_address_user = Client.new(@attr.merge(:last_name => ""))
	 no_address_user.should_not be_valid
  end
  
  it "should require an email address" do
     no_email_user = Client.new(@attr.merge(:last_name => ""))
	 no_email_user.should_not be_valid
  end

end
