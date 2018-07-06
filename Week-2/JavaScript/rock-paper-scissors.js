var playerClass = document.getElementsByClassName('player');
var computerClass = document.getElementsByClassName('computer');

for (let item of playerClass) {
	item.onclick = function() {
		runSimulation(this.classList.value.replace('player', '').trim());
	}
}

function win(player, computer) {
	document.getElementsByClassName('player '+player)[0].classList.add('win');
	document.getElementsByClassName('computer '+computer)[0].classList.add('lose');
}

function lose(player, computer) {
	document.getElementsByClassName('player '+player)[0].classList.add('lose');
	document.getElementsByClassName('computer '+computer)[0].classList.add('win');
}
function tie(player, computer) {
	document.getElementsByClassName('player '+player)[0].classList.add('tie');
	document.getElementsByClassName('computer '+computer)[0].classList.add('tie');
}

function runSimulation(player) {
	var choices = ['rock', 'paper', 'scissors'];
	var index = Math.round((Math.random() * 2));
	var computer = choices[index];
	console.log(player, computer);
	if (player === computer) {
		tie(player, computer)
	} else {
		switch (player) {
			case 'rock':
				if (computer == 'paper') {
					lose(player, computer); break
				} else {
					win(player, computer); break
				}
			case 'paper':
				if (computer == 'scissors') {
					lose(player, computer); break
				} else {
					win(player, computer); break
				}
			case 'scissors':
				if (computer == 'rock') {
					lose(player, computer); break
				} else {
					win(player, computer); break
				}
		}
	}
	// if (computer === player) {
	// 	document.getElementsByClassName('player '+computer)[0].className += ' tie';
	// 	document.getElementsByClassName('computer '+computer)[0].className += ' tie';
	// } else if (computer === 'rock')
}

var rockClass = document.getElementsByClassName('rock');
var paperClass = document.getElementsByClassName('paper');
var scissorsClass = document.getElementsByClassName('scissors');

for (let item of rockClass) {
	var thisPar = document.createElement("P");
	var thisText = document.createTextNode("ROCK");
	thisPar.appendChild(thisText);
	item.appendChild(thisPar);
}
for (let item of paperClass) {
	var thisPar = document.createElement("P");
	var thisText = document.createTextNode("PAPER");
	thisPar.appendChild(thisText);
	item.appendChild(thisPar);
}
for (let item of scissorsClass) {
	var thisPar = document.createElement("P");
	var thisText = document.createTextNode("SCISSORS");
	thisPar.appendChild(thisText);
	item.appendChild(thisPar);
}

var divs = document.getElementsByTagName('DIV')

// for (let item of divs) {
// 	item.onmouseover = function() {
// 		this.classList.toggle('hover');
// 	}
// }