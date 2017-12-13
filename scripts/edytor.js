var img=document.createElement("img");

function rng() {
		var max;
		do{
		max = parseInt(prompt("Problem z podziałem itemów? Wylosuj liczbę!  Podaj max wartość: ", "100"));
		}while(isNaN(max) || max < 1);
	
		var rand = Math.random()*max;
		document.getElementById("RNG").innerHTML = Math.floor(rand);
	};
	
function init() {
	c = document.getElementById("myCanvas");
	ctx = c.getContext("2d");
	replaceImage("../images/miss.jpg");
};

	
function replaceImage(name) {
	ctx.restore();
    
        img.onload = function(){
            ctx.drawImage(img,0,0, 800,600);
            };
    img.src=name;
	ctx.save();
};

function respondClick(event) {
	
	if (event.altKey)
	{
		rotateA();
	}
	else{
	
		if (event.shiftKey)
		{
		rotateB();
		}
		else{
			if (event.ctrlKey)
			{
			rotateC();
			}
		}
	}

};


function rotateA(){
	ctx.scale(-1,1);
	ctx.drawImage(img,0,0, -800,600);
};

function rotateB(){
	ctx.scale(-1,1);
	ctx.drawImage(img,0,0, 800,600);
};

function rotateC(){
	ctx.scale(1,-1);
	ctx.drawImage(img,0,0, 800,-600);
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
