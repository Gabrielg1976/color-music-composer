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

class MusicalColors < Shoes
  url '/', :index
  url '/scales', :scales
  url '/intervals', :intervals
  def index
    title "Music Theory Colorized!", :stroke => white, :weight => 'bold'
    stack do
      subtitle "Functional Music Creation", :stroke => white, :weight => 'bold'
    end
    stack do
      para "This application intends to display colorful music interactive compositional tools."
      para "Adding a new, colorful, dimension to the old ruts of our musical knowledge."
    end
    stack do
      para 'Check out: ', link(strong('Scales'), :click => '/scales'), ', ', link(strong('Intervals'), :click => 'intervals')
    end
  end
end
Shoes.app CONFIG