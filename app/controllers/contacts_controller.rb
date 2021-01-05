class ContactsController < ApplicationController
    def index
        @contacts = Contact.all 
    end 

    def show
        @contact = Contact.find(params[:id])
    end 

    def new 
       @contact = Contact.new 
    end 

    def create 
        @contact = Contact.create(contact_params)
        redirect_to contact_path(@contact)
    end 

    def edit 
        @contact = Contact.find(params[:id])
    end 

    def update 
        @contact = Contact.find(params[:id])
        @contact.update(contact_params)
        redirect_to contact_path(@contact)
    end 

    def destroy 
        @contact = Contact.find(params[:id])
        @contact.destroy
        redirect_to contacts_path 
    end 

    private 

    def contact_params
        params.require(:contact).permit(:name, :birthday, :contact_info, :image, :user_id)
    end 
end
