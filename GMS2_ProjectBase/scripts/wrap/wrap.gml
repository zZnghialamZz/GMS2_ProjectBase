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

/// @function		wrap(value, min, max) 
/// @description	Returns the value wrapped, values over or under will be wrapped around
/// @argument		{float}	value
/// @argument		{float}	min
/// @argument		{float}	max


/* Variables */
var _value	= argument[0];
var _min	= argument[1];
var _max	= argument[2];

/* Script body goes here */
if (_value mod 1 == 0)
{
    while (_value > _max || _value < _min)
    {
        if (_value > _max)
            _value += _min - _max - 1;
        else if (_value < _min)
            _value += _max - _min + 1;
    }
    return(_value);
}
else
{
    var _valold = _value + 1;
    while (_value != _valold)
    {
        _valold = _value;
        if (_value < _min)
            _value = _max - (_min - _value);
        else if (_value > _max)
            _value = _min + (_value - _max);
    }
    return(_value);
}