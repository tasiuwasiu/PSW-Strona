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

