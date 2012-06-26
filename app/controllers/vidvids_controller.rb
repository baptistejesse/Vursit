class VidvidsController < ApplicationController
load_and_authorize_resource :only => :create
before_filter :authenticate_user!
def vote

@vidvid = Vidvid.find(params[:id])
current_user.flag(@vidvid, :vote)
redirect_to :back, :notice => "you just voted!"  
  
end


  # POST /vidvids
  # POST /vidvids.json
  def create
     @video = Video.find(params[:video_id])
     @vidvid = @video.create_vidvid(params[:vidvid])
     redirect_to video_path(@video)
  end

end