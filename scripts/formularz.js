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

function showHelp()
{
	document.getElementById("help").style.display="block";
}

function hideHelp()
{
	document.getElementById("help").style.display="none";
};

function changeAppearance() {
	var selectedValue = document.getElementById("selectList").value;
	var date = new Date();
    date.setTime(date.getTime() + (60 * 60 *1000));
    var expires = "; expires=" + date.toGMTString();
	document.cookie = "appearance = " + selectedValue +";" + expires +";path=/";
	changeAppear(selectedValue);
};

function changeAppear(selectedValue) {
	var selectedItem = document.getElementById("main");
	
	
	if (selectedValue == "1")
	{
		selectedItem.style.fontFamily = "Times New Roman";
		selectedItem.style.color = "black";
		selectedItem.style.backgroundColor = "rgba(255, 255, 255, 0.75)";
		document.body.style.backgroundImage = "url('../images/bg.jpg')";
		
	}
	if (selectedValue == "2")
	{
		selectedItem.style.fontFamily = "Courier New";
		selectedItem.style.color = "white";
		selectedItem.style.backgroundColor = "rgba(0,0,0,0.75)";
		document.body.style.backgroundImage = "url('../images/bgm.jpg')";
	}
	if (selectedValue == "3")
	{
		selectedItem.style.fontFamily = "Georgia";
		selectedItem.style.color = "yellow";
		selectedItem.style.backgroundColor = "black";
		document.body.style.backgroundImage = "url('../images/bbg.jpg')";
	}
};

function selectEle(value)
{    
    var element = document.getElementById("selectList");
    element.value = value;
};
