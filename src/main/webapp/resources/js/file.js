/**
 * 
 */
 let file = '<div class="mb-3" id="f">';
 file = file + '<label for="photo" class="form-label">Photo</label>';
 file = file + '<input type="file" class="form-control put" id="photo" name="photo" aria-describedby="emailHelp">';
 file = file + '</div>'
 
 
 $('#add').click(function(){
	$("#files").after(file);
});