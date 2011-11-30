class PagesController < ApplicationController

def index
	@characters = Character.find(:all)
end

end
