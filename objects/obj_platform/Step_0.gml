if (time_until_destroy > 0){
	time_until_destroy--;
}

if (time_until_destroy <= 0){
	
	instance_destroy(self);
}
