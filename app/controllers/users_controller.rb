class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new('email' => params[:email], 'password' => params[:password]) # avec xxx qui sont les données obtenues à partir du formulaire

    if @user.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      redirect_to @user
      puts "le profil est connecté"

    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render 'new'
    end
  end

  def show
    @userfind = User.find(params[:id])
  end
end
