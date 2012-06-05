class ContactsController < ApplicationController

  def new
    @contact = Contact.new(:user_id => current_user.id)
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:notice] = "Successfully created Contact."
      redirect_to current_user
    else
      render :action => 'new'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      flash[:notice] = "Successfully updated contact."
      redirect_to current_user
    else
      render :action => 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    flash[:notice] = "Successfully destroyed contact."
    redirect_to current_user
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def index
    @contacts = current_user.contacts
  end

end
