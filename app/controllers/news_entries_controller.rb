class NewsEntriesController < ApplicationController
  def index
  	
  	@examples = [
  		{
  			title: "Here's a Title",
  			person: "Bob Dole",
  			thing_you_declare: "Awesomeness!!!",
  			famous_person: "Taylor Swift",
  			adjective: "dancing",
  			another_person: "Britney Spears",
  			city: "Smallville"
  		},
  		{
  			title: "Awesome Second Example",
  			person: "Ryan Seacrest",
  			thing_you_declare: "GREATNESS",
  			adjective: "hopping",
  			another_person: "Lindsey Lohan",
  			city: "Boonsville"
  		}
  	]

  	@link_target = "/news_entries/show?title=Hello&person=Bob%20Dole"
  	@link_text = "Here's an example link"

  end

  def show
  	@title = params[:title]
  	@person = params[:person]
  	@thing_you_declare = params[:thing_you_declare]
  	@famous_person = params[:famous_person]
  	@adjective = params[:adjective]
  	@another_person = params[:another_person]
  	@city = params[:city]
  end

  def new
  end
end
