function convertInchesToCentimeters(number) {
	return (number * 2.54);
}

var myName = prompt('What is your name?');
var heightInches = prompt('How tall are you in inches?');
var weightPounds = prompt('How much do you weigh in pounds?');
var heightCentimeters = convertInchesToCentimeters(heightInches);
var weightKilograms = weightPounds * 0.453592;
alert(myName + ' is ' + heightCentimeters + ' cm and ' + weightKilograms + ' kg.');