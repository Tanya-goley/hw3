Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

  # Home page show the list of places
  get("/", { :controller => "places", :action => "index" })

  # Routes for Places
  get("/places/new", { :controller => "places", :action => "new" }) # Form for new place
  post("/places/new", { :controller => "places", :action => "create" }) # Process new place
  get("/places/:id", { :controller => "places", :action => "show" }) # Show a single place

  # Routes for Entries (associated with a place)
  get("/places/:place_id/entries/new", { :controller => "entries", :action => "new" }) # Form for new entry
  post("/places/:place_id/entries/new", { :controller => "entries", :action => "create" }) # Process new entry
end
