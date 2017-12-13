function rng() {
		var max;
		do{
		max = parseInt(prompt("Problem z podziałem itemów? Wylosuj liczbę!  Podaj max wartość: ", "100"));
		}while(isNaN(max) || max < 1);
	
		var rand = Math.random()*max;
		document.getElementById("RNG").innerHTML = Math.floor(rand);
	};
	
function changeAppearance() {
	var selectedValue = document.getElementById("selectList").value;
	changeAppear(selectedValue);
};

function changeAppear(selectedValue) {
	var selectedItem = document.getElementById("mainarticle");
	var selectedItem2 = document.getElementById("endArt");
	var date = new Date();
    date.setTime(date.getTime() + (60 * 60 *1000));
    var expires = "; expires=" + date.toGMTString();
	
	if (selectedValue == "1")
	{
		selectedItem.style.fontFamily = "Times New Roman";
		selectedItem.style.color = "black";
		selectedItem.style.backgroundColor = "rgba(255, 255, 255, 0.75)";
		selectedItem2.style.fontFamily = "Times New Roman";
		selectedItem2.style.color = "black";
		selectedItem2.style.backgroundColor = "rgba(255, 255, 255, 0.75)";
		document.body.style.backgroundImage = "url('images/bg.jpg')";
		document.cookie = "appearance = 1;" + expires +";path=/";
	}
	if (selectedValue == "2")
	{
		selectedItem.style.fontFamily = "Courier New";
		selectedItem.style.color = "white";
		selectedItem.style.backgroundColor = "rgba(0,0,0,0.75)";
		selectedItem2.style.fontFamily = "Courier New";
		selectedItem2.style.color = "white";
		selectedItem2.style.backgroundColor = "rgba(0,0,0,0.75)";
		document.body.style.backgroundImage = "url('images/bgm.jpg')";
		document.cookie = "appearance = 2;" + expires +";path=/";
	}
	if (selectedValue == "3")
	{
		selectedItem.style.fontFamily = "Georgia";
		selectedItem.style.color = "yellow";
		selectedItem.style.backgroundColor = "black";
		selectedItem2.style.fontFamily = "Georgia";
		selectedItem2.style.color = "yellow";
		selectedItem2.style.backgroundColor = "black";
		document.body.style.backgroundImage = "url('images/bbg.jpg')";
		document.cookie = "appearance = 3;" + expires +";path=/";
	}
};

function zwin(){
	document.getElementById("but_on").style.display = "block";
	document.getElementById("but_off").style.display = "none";
	
	for (i=1; i<=5; i++)
	{
		var elem = document.getElementById("list"+i);
		while (elem.hasChildNodes())
		{
			elem.removeChild(elem.childNodes[0]);
		}
	}
};

function rozwin(){
	document.getElementById("but_on").style.display = "none";
	document.getElementById("but_off").style.display = "block";

	var rajd = ["1", "2", "4"];
	var mythic = ["1", "3"];
	var areny = ["3", "5"];
	
	for (i=0;i<3;i++)
	{
		var node = document.createElement("LI");
		node.appendChild(document.createTextNode("Rajd"));
		document.getElementById("list"+rajd[i]).appendChild(node);
	}

	for (i=0; i<2; i++)
	{
		var node = document.createElement("LI");
		node.appendChild(document.createTextNode("Mythic+"));
		document.getElementById("list"+mythic[i]).appendChild(node);
	}

	var n6 = document.createElement("LI");
	n6.appendChild(document.createTextNode("Battlegroundy"));
	document.getElementById("list4").appendChild(n6);
	
	
	var n7 = document.createElement("LI");
	n7.appendChild(document.createTextNode("Transmog runy"));
	document.getElementById("list5").appendChild(n7);
	
	for (i=0; i<2; i++)
	{
		var node = document.createElement("LI");
		node.appendChild(document.createTextNode("Areny"));
		document.getElementById("list"+areny[i]).appendChild(node);
	}
};

function selectEle(value)
{    
    var element = document.getElementById("selectList");
    element.value = value;
}