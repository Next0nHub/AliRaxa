class ContactsController < ApplicationController
	
	def new	
		@contact = Contact.new
	end
	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
      	if @contact.deliver
     	 flash.now[:error] = nil
     	 redirect_to contacts_path
      	else
        flash.now[:error] = "Message cannot send"
        redirect_to root_path
      	end
	end
end
