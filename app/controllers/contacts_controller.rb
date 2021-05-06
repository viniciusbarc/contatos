class ContactsController < ApplicationController
  def index
    @contacts = current_user.contacts.all.order(name: :asc)
  end

  def new
    @contact = current_user.contacts.new
  end
  
  def create
    @contact = current_user.contacts.new(contact_params)

    if @contact.save
      flash.notice = "Contato cadastrado com sucesso."
      redirect_to contacts_path
    else
      render :new
    end
  end

  def edit
    @contact = current_user.contacts.find(params[:id])
  end

  def show
    @contact = current_user.contacts.find(params[:id])
  end

  def update
    @contact = current_user.contacts.find(params[:id])
    if @contact.update(contact_params)
      flash.notice = "Contato atualizado com sucesso."
      redirect_to contacts_path
    else
      render :edit
    end
  end

  def destroy
    @contact = current_user.contacts.find(params[:id])
    @contact.destroy
    flash.notice = 'Contato apagado com sucesso.'
    redirect_to contacts_path
  end  

  private
    def contact_params
      params.require(:contact).permit(:name,:primary_email,:secondary_email,:primary_phone,:secondary_phone,:birth_date,:linkedin,:address, :photo, :notes)
    end
end
