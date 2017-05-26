$('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});


function CampiStudente(){
    
    var nome = registrazione.nome.value;
    var cognome = registrazione.cognome.value;
    var email = registrazione.email.value;
    var classe = registrazione.classe.value;
    var indirizzo = registrazione.indirizzo.value;
    var sezione = registrazione.sezione.value;
    var password = registrazione.password.value;
    var repassword = registrazione.repassword.value;
    var ret = true;
    
    
    if (password == repassword){
        
    if(cognome=="" || cognome.length <= 2)    
    {
        document.getElementById("cognome").style.borderColor = "red";
        ret = false;
    }
    
    if (nome=="" || nome.length <= 2) {
        document.getElementById("nome").style.borderColor = "red";
        ret = false;
        
    }
    
     if (email=="" || email.length <= 5) {
          document.getElementById("email").style.borderColor = "red";
        ret = false;
         
     }
     
     if (classe=="") {
          document.getElementById("classe").style.borderColor = "red";
        ret = false;
         
     }
     
     if (indirizzo=="") {
         document.getElementById("indirizzo").style.borderColor = "red";
        ret = false;
         
     }
     
     if (sezione=="") {
          document.getElementById("sezione").style.borderColor = "red";
        ret = false;
         
     }
     
     if (password=="" || password.length <= 5) {
         document.getElementById("password").style.borderColor = "red";
        ret = false;
         
     }
     
     if (repassword=="" ) {
         document.getElementById("repassword").style.borderColor = "red";
        ret = false;    
     }
      if (ret==false){
         
         return false;
     }
    
 }
 
else {
     document.getElementById("password").style.borderColor = "orange";
     document.getElementById("repassword").style.borderColor = "orange";
     ret =false;
     
      if (ret==false){
         
         return false;
     }
}


}

