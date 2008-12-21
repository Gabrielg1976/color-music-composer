#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

CONFIG = {
	:width 		=> 800, 
	:height 	=> 600, 
	:resizable 	=> false, 
	:title 		=> "Color Music Tools",
}
def colors 
@A = red,
@B = orange
@C = yellow
@D = green
@E = blue
@F = indigo
@G = violet
#It will be necessary to assign colors to the enharmonic notes.
end
class MusicalColors < Shoes
  url '/', :index
  url '/intervals', :intervals
  url '/scales', :scales
  def index
    background green..orange, :angle => 77
    title "Music Theory Colorized!", :stroke => blue, :weight => 'bold'
    stack do
      subtitle "Functional Music Creation", :stroke => orange, :weight => 'bold'
    end
    stack do
      para "This application intends to display colorful music interactive compositional tools."
      para "Adding a new, colorful, dimension to the old ruts of our musical knowledge."
    end
    stack do
      para 'Check out: ', link(strong('Scales'), :click => '/scales'), ', ', link(strong('Intervals'), :click => '/intervals')
    end
  end
  def intervals
    stack do
      title "Musical Intervals"
      subtitle "Demonstrating fundamental intervals."
      para "Using simple addition, one can create triads and other chords using the basic building blocks of intervals."
      para link(strong('Index'), :click => '/')
    end
  end
  def scales
    stack do
      title "Diatonic Scales."
      subtitle "Scale calculator based on tonic."
      para link(strong('Index'), :click => '/')
    end
  end
end
Shoes.app CONFIG