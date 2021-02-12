class LoginsController < ApplicationController

  # GET: /logins
  get "/logins" do
    @login = Login.find(params[:id])
    @role = Role.find(params[:id])
    erb :index
  end


  # GET: /logins/new
  get "/logins/new" do
    erb :"/logins/new.html"
  end

  # POST: /logins
  post "/logins" do
    redirect "/logins"
  end

  # GET: /logins/5
  get "/logins/:id" do
    erb :"/logins/show.html"
  end

  # GET: /logins/5/edit
  get "/logins/:id/edit" do
    erb :"/logins/edit.html"
  end

  # PATCH: /logins/5
  patch "/logins/:id" do
    redirect "/logins/:id"
  end

  # DELETE: /logins/5/delete
  delete "/logins/:id/delete" do
    redirect "/logins"
  end
end
