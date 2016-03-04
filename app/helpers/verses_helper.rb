module VersesHelper
def show
     @verse = Verses.find(params[:id])
  end
end
