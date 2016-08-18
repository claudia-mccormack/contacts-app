class ContactsController < ApplicationController
  before_action :authenticate_user!

  def index
    @contact = current_user.contacts
    if params[:group]
      group = Group.find_by(name: params[:group])
      @contact = group.contacts.where(user_id: current_user)
    end
  render "index.html.erb"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    if current_user.contacts.include?(@contact)
    else
      flash[:warning] = "Sorry! That is not one of your contacts!"
      redirect_to '/contacts'
    end

    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    coordinates = Geocoder.coordinates(params[:address])
    @contact = Contact.create(
      first: params[:first],
      middle: params[:middle],
      last: params[:last],
      email: params[:email],
      bio: params[:bio],
      latitude: nil,
      longitude: nil,
    )

    if @contact.valid?
      flash[:success] = "Contact added successfully!"
      redirect_to "/contacts"
    else
      flash[:danger] = @contact.errors.full_messages
      render "new.html.erb"
    end
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
    first: params[:first],
    middle: params[:middle],
    last: params[:last],
    email: params[:email],
    latitude: nil,
    longitude: nil,
    )
    if @contact.valid?
      flash[:success] = "Contact updated successfully!"
      redirect_to "/contacts"
    else
      flash[:danger] = @contact.errors.full_messages
      render "edit.html.erb"
    end
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render "destroy.html.erb"
  end

end
