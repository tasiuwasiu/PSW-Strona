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
	var selectedItem = document.getElementById("mainarticle");
	if (selectedValue == "1")
	{
		selectedItem.style.fontFamily = "Times New Roman";
		selectedItem.style.color = "black";
		selectedItem.style.backgroundColor = "rgba(255, 255, 255, 0.75)";
	}
	if (selectedValue == "2")
	{
		selectedItem.style.fontFamily = "Courier New";
		selectedItem.style.color = "blue";
		selectedItem.style.backgroundColor = "gray";
	}
	if (selectedValue == "3")
	{
		selectedItem.style.fontFamily = "Georgia";
		selectedItem.style.color = "green";
		selectedItem.style.backgroundColor = "black";
	}
};

function zwin(){
	document.getElementById("but_on").style.display = "block";
	document.getElementById("but_off").style.display = "none";
	

	var elem1 = document.getElementById("list1");
	while(elem1.hasChildNodes()){
		elem1.removeChild(elem1.childNodes[0]);
		}
	
	var elem2 = document.getElementById("list2");
	while(elem2.hasChildNodes()){
		elem2.removeChild(elem2.childNodes[0]);
		}
	
	var elem3 = document.getElementById("list3");
	while(elem3.hasChildNodes()){
		elem3.removeChild(elem3.childNodes[0]);
		}
	
	var elem4 = document.getElementById("list4");
	while(elem4.hasChildNodes()){
		elem4.removeChild(elem4.childNodes[0]);
		}
	
	var elem5 = document.getElementById("list5");
	while(elem5.hasChildNodes()){
		elem5.removeChild(elem5.childNodes[0]);
		}
};

function rozwin(){
	document.getElementById("but_on").style.display = "none";
	document.getElementById("but_off").style.display = "block";

	var n1 = document.createElement("LI");
	n1.appendChild(document.createTextNode("Rajd"));
	document.getElementById("list1").appendChild(n1);
	
	var n2 = document.createElement("LI");
	n2.appendChild(document.createTextNode("Rajd"));
	document.getElementById("list2").appendChild(n2);
	
	var n3 = document.createElement("LI");
	n3.appendChild(document.createTextNode("Rajd"));
	document.getElementById("list4").appendChild(n3);

	
	var n4 = document.createElement("LI");
	n4.appendChild(document.createTextNode("Mythic+"));
	document.getElementById("list1").appendChild(n4);
	
	var n5 = document.createElement("LI");
	n5.appendChild(document.createTextNode("Mythic+"));
	document.getElementById("list3").appendChild(n5);
	

	var n6 = document.createElement("LI");
	n6.appendChild(document.createTextNode("Battlegroundy"));
	document.getElementById("list4").appendChild(n6);
	
	
	var n7 = document.createElement("LI");
	n7.appendChild(document.createTextNode("Transmog runy"));
	document.getElementById("list5").appendChild(n7);
	
	
	var n8 = document.createElement("LI");
	n8.appendChild(document.createTextNode("Areny"));
	document.getElementById("list3").appendChild(n8);
	
	var n9 = document.createElement("LI");
	n9.appendChild(document.createTextNode("Areny"));
	document.getElementById("list5").appendChild(n9);
};