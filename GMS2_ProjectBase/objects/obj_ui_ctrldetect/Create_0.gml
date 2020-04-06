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

/// @description	Setting Values

// Inherit the parent event
event_inherited();

startup = false;

grid = eGRID.bot_center;
length = 30;
inactive_offset = [0, 200];

// Detect which controller is using
if (global.gcontroller.use_gamepad)
	_sprite = spr_gamepad;
else
	_sprite = spr_keyboard;
	
_sprw = sprite_get_width(_sprite);
_sprh = sprite_get_height(_sprite);
_offsetx = 50;
_offsety = 30;

xstart = x - (_sprw + _offsetx)/2;
ystart = y - (_sprh + _offsety);

done = false;
anim_step   = 0;
anim_spd	= 0.25;
anim_max    = sprite_get_number(_sprite);
show_debug_message(string(anim_max));

// Update Position
event_user(0);