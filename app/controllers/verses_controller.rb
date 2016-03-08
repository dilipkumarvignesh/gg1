class VersesController < ApplicationController
def show
     @verse = Verse.find(params[:id])
  end
   def index
    @verses = Verse.paginate(page: params[:page])
  end
end
