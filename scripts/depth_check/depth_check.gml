// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function depth_check(){
	if instance_exists(o_player){
		if y > o_player.y {
			depth = o_player.depth-1;	
		}
		else{
			depth = o_player.depth+1;		
		}
	}
}