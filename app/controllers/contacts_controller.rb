class ContactsController < ApplicationController
    def index
        @contacts = @current_user.contacts 
        @events = Event.all
        @messages = Message.all
        # byebug
    end 

    def show
        @contact = Contact.find(params[:id])
        @events = Event.all
    end 

    def new 
       @contact = Contact.new 
    end 

    def create 
        @contact = Contact.create(contact_params)
        if @contact.valid?
            session[:contact_id] = @contact.id
            redirect_to contact_path(@contact)
        else 
            flash[:errors_array] = @contact.errors.full_messages
            redirect_to new_contact_path
        end 
    end 

    def edit 
        @contact = Contact.find(params[:id])
    end 

    def update 
        @contact = Contact.find(params[:id])

        if @contact.update(contact_params)
            redirect_to contact_path(@contact)
        else 
            flash[:errors_array] = @contact.errors.full_messages
            redirect_to edit_contact_path(@contact)
        end 
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
