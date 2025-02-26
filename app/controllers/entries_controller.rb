class EntriesController < ApplicationController
  def new
    @place = Place.find_by("id" => params["place_id"]) # Use correct parameter name
  end

  def create
    # Start with a new entry
    @entry = Entry.new

    # Assign data entered by user in form to Entry's columns
    @entry["title"] = params["title"]
    @entry["occurred_on"] = params["date"]
    @entry["description"] = params["description"]
    @entry["place_id"] = params["place_id"] 

    # Save entry
    @entry.save

    # Redirect user to the place's page
    redirect_to "/places/#{params["place_id"]}"
  end
end
