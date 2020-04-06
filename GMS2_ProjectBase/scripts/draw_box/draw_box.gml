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

/// @function		draw_box(sprite, x1, y1, x2, y2) 
/// @description	Draw the box using the sprite, which is sliced into 4 in ui section.
/// @argument		sprite
/// @argument		x1
/// @argument		y1
/// @argument		x2
/// @argument		y2


/* Variables */
var _sprite	= argument[0];
var _x1		= argument[1];
var _y1		= argument[2];
var _x2		= argument[3];
var _y2		= argument[4];
var _size	= sprite_get_width(_sprite) / 2;
var _w		= _x2 - _x1;
var _h		= _y2 - _y1;
//var _cols	= _w div _size;
//var _rows	= _h div _size; 

/* Script body goes here */
// Corner	------------------------------------------------
draw_sprite_part(_sprite, 0, 0, 0, _size, _size, _x1, _y1);															// Top Left
draw_sprite_part_ext(_sprite, 0, 0, 0, _size, _size, _x1 + (_w - _size), _y1, -1, 1, c_white, 1);					// Top Right
draw_sprite_part_ext(_sprite, 0, 0, 0, _size, _size, _x1, _y1 + (_h - _size), 1, -1, c_white, 1);					// Bottom Left
draw_sprite_part_ext(_sprite, 0, 0, 0, _size, _size, _x1 + (_w - _size), _y1 + (_h - _size), -1, -1, c_white, 1);	// Bottom Right


// Edges	------------------------------------------------
//for (var i = 1; i < _rows; i++)
//{
//	if ( i + 1 == _rows) break; // Investigate Why
//	draw_sprite_part(_sprite, 0, 0, _size, _size, _size, _x1, _y1 + (i * _size));											// Left Edges
//	draw_sprite_part_ext(_sprite, 0, 0, _size, _size, _size, _x1 + (_cols * _size), _y1 + (i * _size), -1, 1, c_white, 1);	// Right Edges
//}
//for (var i = 1; i < _cols; i++)
//{
//	if ( i + 1 == _cols) break; // Investigate Why
//	draw_sprite_part(_sprite, 0, _size, 0, _size, _size, _x1 + (i * _size), _y1);											// Top Edges
//	draw_sprite_part_ext(_sprite, 0, _size, 0, _size, _size, _x1 + (i * _size), _y1 + (_rows * _size), 1, -1, c_white, 1);	// Bottom Edges
//}
draw_sprite_part_ext(_sprite, 0, 0, _size, _size, 1, _x1, _y1 + _size, 1, _h - (_size * 3), c_white, 1);					// Left Edges
draw_sprite_part_ext(_sprite, 0, 0, _size, _size, 1, _x1 + (_w - _size), _y1 + _size, -1, _h - (_size * 3), c_white, 1);	// Right Edges
draw_sprite_part_ext(_sprite, 0, _size, 0, 1, _size, _x1 + _size, _y1, _w - (_size * 3), 1, c_white, 1);					// Top Edges
draw_sprite_part_ext(_sprite, 0, _size, 0, 1, _size, _x1 + _size, _y1 + (_h - _size), _w - (_size * 3), -1, c_white, 1);	// Bottom Edges

// Middle	------------------------------------------------
//for (var i = 1; i < _rows; i++)
//{
//	if ( i + 1 == _rows) break; // Investigate Why
//	for (var j = 1; j < _cols; j++)
//	{
//		if ( j + 1 == _cols) break; // Investigate Why
//		draw_sprite_part(_sprite, 0, _size, _size, _size, _size, _x1 + (j * _size), _y1 + (i * _size)); 
//	}
//}
draw_sprite_part_ext(_sprite, 0, _size, _size, 1, 1, _x1 + _size, _y1 + _size, _w - (_size * 3), _h - (_size * 3), c_white, 1);