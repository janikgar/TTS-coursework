var playerClass = $('.player');
var computerClass = $('.computer');

$('.player').click(function() {
	runSimulation(this.classList.value.replace('player', '').trim());
})

function win(player, computer) {
	console.log(player, computer);
	$('.player.'+player).addClass('win');
	$('.computer.'+computer).addClass('lose');
}

function lose(player, computer) {
	$('.player.'+player).addClass('lose');
	$('.computer.'+computer).addClass('win');
}
function tie(player, computer) {
	$('.player.'+player).addClass('tie');
	$('.computer.'+computer).addClass('tie');
}

function runSimulation(player) {
	var choices = ['rock', 'paper', 'scissors'];
	var index = Math.round((Math.random() * 2));
	var computer = choices[index];
	// console.log(player, computer);
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
}

var rockClass = $('.rock');
var paperClass = $('.paper');
var scissorsClass = $('.scissors');

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