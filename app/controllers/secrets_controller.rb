class SecretsController < ApplicationController

  def index
    @secrets = Secret.all
    render :index
  end

  def show
    #set id from url params
    secret_id = params[:id]

    # find secret in db by id
    @secret = Secret.find(secret_id)

    render :show
  end

  def new
    render :new
  end

  def create
    # add info into the create method so the controller knows how to create a new secret in the database
    secret = params[:secret].permit(:nickname, :secret, :country)
    Secret.create(secret)
    redirect_to '/secrets'
  end

end
