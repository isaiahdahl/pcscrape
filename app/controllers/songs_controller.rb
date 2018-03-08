class SongsController < ApplicationController
  def index
    @songs = Song.order(:notation, title: :asc)
    respond_to do |format|
      format.html
      format.csv { send_data @songs.to_csv }
      format.xls
    end
  end
end
