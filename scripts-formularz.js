function rng() {
		var max;
		do{
		max = parseInt(prompt("Problem z podziałem itemów? Wylosuj liczbę!  Podaj max wartość: ", "100"));
		}while(isNaN(max) || max < 1);
	
		var rand = Math.random()*max;
		document.getElementById("RNG").innerHTML = Math.floor(rand);
	};
	
function send()
{
	return confirm("Czy na pewno chcesz wysłać formularz?");
};

function clearAlert()
{
	alert("Wyczyszczono formularz");
};