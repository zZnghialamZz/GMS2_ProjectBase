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

/// @function     win_set_aspect(eASPECT) 
/// @description  Setting the aspect ratio
/// @argument     eASPECT

with (global.gwm)
{
	switch (argument[0])
	{
		case eASPECT._16x9:
		{
			cur_h = mResH;
			cur_w = mResH * (16 / 9);
			break;
		}
		case eASPECT._21x9:
		{
			cur_h = mResH;
			cur_w = mResH * (21 / 9);
			break;
		}
		case eASPECT._4x3:
		{
			cur_h = mResH;
			cur_w = mResH * (4 / 3);
			break;
		}
		case eASPECT._1x1:
		{
			cur_h = mResH;
			cur_w = mResH;
			break;
		}
	}
	
	mResizeWindow;
	win_transition(eGAME.transition, 10);
}