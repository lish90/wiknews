class ArticlesController < ApplicationController

def index
    @articles = Aticle.all
end 

def show 
end 

end
