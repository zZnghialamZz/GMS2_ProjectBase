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

/// @function		approach(a, b, amount) 
/// @description	Moves "a" towards "b" by "amount" and returns the result
///					Nice bcause it will not overshoot "b", and works in both directions
/// @argument		{float}	a
/// @argument		{float}	b
/// @argument		{float}	amount

// Examples:
//      speed = approach(speed, max_speed, acceleration);
//      hp = approach(hp, 0, damage_amount);
//      hp = approach(hp, max_hp, heal_amount);
//      x = approach(x, target_x, move_speed);
//      y = approach(y, target_y, move_speed);

if (argument0 < argument1)
{
    argument0 += argument2;
    if (argument0 > argument1)
        return argument1;
}
else
{
    argument0 -= argument2;
    if (argument0 < argument1)
        return argument1;
}
return argument0;