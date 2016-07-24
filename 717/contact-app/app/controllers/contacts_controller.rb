class ContactsController < ApplicationController
  def index
    @contact = Contact.all
    render "index.html.erb"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @contact = Contact.new(
      first: params[:first],
      last: params[:last],
      email: params[:email]
    )
    @contact.save
    render "create.html.erb"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
    first: params[:first],
    last: params[:last],
    email: params[:email]
    )
    render "update.html.erb"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render "destroy.html.erb"
  end
end
