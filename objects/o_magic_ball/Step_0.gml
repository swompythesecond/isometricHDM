if instance_exists(o_depth){
		var _nearest_tree = instance_nearest(x,y,o_depth);
		if y > _nearest_tree.y {
			depth = _nearest_tree.depth-1;	
		}
		else{
			depth = _nearest_tree.depth+1;		
		}
	}













