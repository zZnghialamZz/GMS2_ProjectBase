/*	GMS2_ProjectBase

	Copyright (C) 2020  Nghia Lam

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

/* ********************************************************************* */

/// @description	Check Player Input

if (global.gcontroller.key_pause)
{
	global.pause = !global.pause;
	if (global.pause)
	{
		with (all)
		{ 
			game_pause_spd = image_speed;
			image_speed = 0;
		}
	}
	else
	{
		with (all) { 
			if (instance_exists(id)) image_speed = game_pause_spd; 
		}
	}
}