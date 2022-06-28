/// @desc
ratio = view_get_hport( 0 ) / camera_get_view_height( view_camera[0] );
sx = ( x - camera_get_view_x( view_camera[0] ) + (viewxprevious - camera_get_view_x( view_camera[0] ) ) ) * ratio;
sy = ( y - camera_get_view_y( view_camera[0] ) + (viewyprevious - camera_get_view_y( view_camera[0] ) ) ) * ratio;

viewxprevious = camera_get_view_x( view_camera[0] );
viewyprevious = camera_get_view_y( view_camera[0] );