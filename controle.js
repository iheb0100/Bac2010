function generecaptcha()
{
	var ch = '' ; 
	for(i=1;i<=10;i++){
		var k = (Math.random() * 26 )+1;
		var e = Math.floor(k); 
		if(e % 2 ==0 ){
			ch = ch + String.fromCharCode(e+64);
			
		}
		else
		{
			ch = ch + String.fromCharCode(e+96);

	}
		
	}
	document.f.T1.value=ch ;
return false ; 
}

// Fonction verif

function verif()
{
	var a=f.D1;	
	var b=f.R1; 
	var c=f.R2;
	var d=f.T1.value;
	var e=f.T2.value;
	var m=0;
	if(a.selectedIndex<=0){alert('La selection est obligatoire');
	return false ;}
	if(!(b[0].checked) && !(b[1].checked) && !(b[2].checked)) {alert('La selection du Acceuil est obl'); return false; }
	if(!(c[0].checked) && !(c[1].checked) && !(c[2].checked)) {alert('La selection du restauration est obl'); return false; }
	for (i=0; i<=d.length;i++){
		if(d[i] >='A' && d[i] <='Z'){m=m+1;}
	}
	if(Number(e)!=m){alert('Veridier la captcha ');return false;}		
}