require 'spec_helper'

describe Video do
 it 'should have a title with zambie' do
 video = Video.new
 video.title = "zambie"
 video.title.should == "zambie"
 end
 
 it 'should not be valid if video not http' do
 video = Video.new
 video.viddy = "bombom"
 video.title = "zambie"
 video.should_not be_valid
 end
 
 it 'should be valid if video has http' do
 @video = Video.new
 @video.title = "hello"
 @video.viddy = "http://www.google.com"
 @video.should be_valid
 end
 
 it { should respond_to(:viddy)}
 
 
 
 it "should have 1 vidvid" do
   @video = Video.new
   @video.title = "hello"
   @video.viddy = "http://www.google.com"
   @video.save
 @vidvid = @video.vidvids.create(video_id: @video.id, viddy1: "ello", title1: "http://www.google.com" )  
 @video.vidvids.count.should == 1
end   
   
 
 
 
end