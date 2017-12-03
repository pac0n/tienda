function post()
{
  var comentar = document.getElementById("comentar").value;
  var usuario = document.getElementById("usuario").value;
  var codprod = document.getElementById("codprod").value;
  if(comentar && usuario && codprod)
  {
    $.ajax
    ({
      type: 'post',
      url: 'post_comments.php',
      data: 
      {
         user_comm:comentar,
	     user_name:usuario,
       num_prod:codprod
      },
      success: function (response) 
      {
	    document.getElementById("all_comments").innerHTML=response+document.getElementById("all_comments").innerHTML;
	    document.getElementById("comentar").value="";
        document.getElementById("usuario").value="";
        document.getElementById("codprod").value="";
  
      }
    });
  }
  
  return false;
}