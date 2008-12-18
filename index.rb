#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/agpl-3.0.html>.

CONFIG = {
	:width 		=> 400, 
	:height 	=> 400, 
	:resizable 	=> false, 
	:title 		=> "Color Music Tools"
}
SETTINGS = {
  :pwidth               => 75,
  :pheight              => 5,
  :speed                => 10,
  :start_angle          => rand(0..359)
}

Shoes.app CONFIG do
	background green..orange, :angle => 77

  #Notes and Colors
  @A = oval :top => 150, :left => 150, :radius => 15, :fill => red
  @B = oval :top => 150, :left => 150, :radius => 15, :fill => orange
  @C = oval :top => 150, :left => 150, :radius => 15, :fill => yellow
  @D = oval :top => 150, :left => 150, :radius => 15, :fill => green
  @E = oval :top => 150, :left => 150, :radius => 15, :fill => blue
  @F = oval :top => 150, :left => 150, :radius => 15, :fill => indigo
  @G = oval :top => 150, :left => 150, :radius => 15, :fill => violet
  @note = image "http://upload.wikimedia.org/wikipedia/commons/7/78/Nuvola_apps_juk.png", :top => 100, :left => 100
  #Intro text. Put on timer.
  flow do
     stack
     title "Synthgunt", :stroke => white, :weight => 'bold'

     end
    #Subtitle Section
    stack do
       subtitle "Functional Music Creation", :stroke => white, :weight => 'bold'

     end
   #Body and links.
    stack do
  para "This application intends to display colorful music interactive compositional tools."
  para(link("Click here for the overview"){ alert "Interrelationship Map" })
  end
#Dancing ovals.
#	@animate = animate 20 do
#		if @ball.left > app.width
#			dangle = (180 - dangle)
#			rangle = dangle * Math::PI/180
#		end
#		if @ball.top > app.height
#			dangle *= -1
#			rangle = dangle * Math::PI/180
#		end

  animate do |i|
    @A.top += (-20..20).rand
    @A.left += (-20..20).rand
    @B.top += (-20..20).rand
    @B.left += (-20..20).rand
    @C.top += (-20..20).rand
    @C.left += (-20..20).rand
    @D.top += (-20..20).rand
    @D.left += (-20..20).rand
    @E.top += (-20..20).rand
    @E.left += (-20..20).rand
    @F.top += (-20..20).rand
    @F.left += (-20..20).rand
    @G.top += (-20..20).rand
    @G.left += (-20..20).rand
    end
  #Mouse note following.
  motion do |left, top|
    @note.move left, top
 end
 end