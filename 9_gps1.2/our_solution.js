// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1.Devin Johnson
//  2.Christiane Kammerl


//  1. "YOU SIGNED... WHO?!"
var brad = {
  name: "Brad Pitt",
  age: 50,
  quote: "Do or do not... there is no try"
}

var angelina = {
  name: "Angelina Jolie",
  age: 38,
  quote: "To be or not to be, I don't know!"
}

// 2. "Here they Come!"


function Client(name, age, quote) {
  this.name = name;
  this.age = age;
  this.quote = quote;
}

var adam = new Client("Adam Sandler", 47, "That's your home! Are you too good for your home?!")
var kristen = new Client("Kristen Bell", 33, "Do you wanna build a snowman?")
var jim = new Client("Jim Carrey", 52, "...so you're telling me there's a chance? YEAH")

var allClients = [adam, kristen, jim, brad, angelina]

//    3. "TIME IS MONEY!"

// YOUR CODE HERE!

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";


//     4. "SHOW 'EM OFF!"

for(i = 0; i < allClients.length; i++){
  console.log("Client name: " + allClients[i].name);
  console.log("Client age: " + allClients[i].age);
  console.log("Quote: " + allClients[i].quote + "\n");
}

