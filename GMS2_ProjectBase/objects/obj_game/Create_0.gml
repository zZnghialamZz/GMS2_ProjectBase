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

/// @description	Init Game Values

#region Global Variables
global.pause		= false;
global.quit			= false;
global.sound		= true;

global.has_grv		= true; // Platformer only
#endregion

#region Init Managers
global.gwm			= instance_create_layer(0, 0, layer, obj_wm);
global.gcam			= instance_create_layer(0, 0, layer, obj_camera);
global.gcontroller	= instance_create_layer(0, 0, layer, obj_controller);
global.audio		= instance_create_layer(0, 0, layer, obj_audio);

global.guim			= instance_create_layer(0, 0, layer_get_id("lyr_ui"), obj_uim);
#endregion