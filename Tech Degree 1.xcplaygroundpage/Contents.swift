/*
 --------------
 Tech Degree Info
 --------------
 */

/*
 Every key has 3 values: Height (Int), Soccer Experience (Bool) and Guardian Name("String")

 Joe Smith              42              YES         Jim and Jan Smith
 Jill Tanner            36              YES         Clara Tanner
 Bill Bon               43              YES         Sara and Jenny Bon
 Eva Gordon             45              NO          Wedny and Mike Gordon
 Matt Gill              40              NO          Charles and Sylvia Gill
 Kimmy Stein            41              NO          Bill and Hillary Stein
 Sammy Adams            45              NO          Jeff Adams
 Karl Saygan            42              YES         Heather Bledsoe
 Suzane Greenberg       44              YES         Henrietta Dumas
 Sal Dali               41              NO          Gala Dali
 Joe Kavalier           39              NO          Sam and Elaine Kavalier
 Ben Finkelstein        44              NO          Aaron and Jill Finkelstein
 Diego Soto             41              YES         Robin and Sarika Soto
 Chloe Alaska           47              NO          David and Jamie Alaska
 Arnold Willis          43              NO          Claire Willis
 Phillip Helm           44              YES         Thomas Helm and Eva Jones
 Les Clay               42              YES         Wynonna Brown
 Herschel Krustofski    45              YES         Hyman and Rachel Krustofski
 
 
 */

/*
 
 3 even teams, Dragons, Sharks and Raptors
 
 Create logic to iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team's players in its own collection for us in part 3. This solution should work independent of order and if there are 18 or 100 players
 
 For exceed expectation make sure that each team's average height is within 1.5 inches of the others.
 
 */

/*
 
 Write code that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team practice. The letter should contain at least (player name, team name, guardian names, practice date/time)
 
 Dragons: March 17, 1pm
 Sharks: March 17, 3pm
 Raptors: March 18, 1pm
 
 When your complete code is run in a playground the letters should be stored in a collection named 'letters'. When the code is run, the letters should be visible in the console.
*/

/*
 
 create a single collection named 'players' that contains all information for all 18 players. Each player must themselves be represented by a Dictionary with String keys and the corresponding values.
*/
 
 
/*
 --------------
 Tech Degree Code
 --------------
 */

// Plan: Have 18 constants

let player1: [String: Any] = ["playerName":"Joe Smith",            "experience":true,    "height":42,    "guardians":"Jim and Jan Smith"]
let player2: [String: Any] = ["playerName":"Jill Tanner",          "experience":true,    "height":36,    "guardians":"Clara Tanner"]
let player3: [String: Any] = ["playerName":"Bill Bon",             "experience":true,    "height":43,    "guardians":"Sara and Jenny Bon"]
let player4: [String: Any] = ["playerName":"Eva Gordon",           "experience":false,   "height":45,    "guardians":"Wendy and Mike Gordon"]
let player5: [String: Any] = ["playerName":"Matt Gill",            "experience":false,   "height":40,    "guardians":"Charles and Sylvia Gill"]
let player6: [String: Any] = ["playerName":"Kimmy Stein",          "experience":false,   "height":41,    "guardians":"Bill and Hillary Stein"]
let player7: [String: Any] = ["playerName":"Sammy Adams",          "experience":false,   "height":45,    "guardians":"Jeff Adams"]
let player8: [String: Any] = ["playerName":"Karl Saygan",          "experience":true,    "height":42,    "guardians":"Heather Bledsoe"]
let player9: [String: Any] = ["playerName":"Suzane Greenberg",     "experience":true,    "height":44,    "guardians":"Henrietta Dumas"]
let player10: [String: Any] = ["playerName":"Sal Dali",            "experience":false,   "height":41,    "guardians":"Gala Dali"]
let player11: [String: Any] = ["playerName":"Joe Kavalier",        "experience":false,   "height":39,    "guardians":"Sam and Elaine Kavalier"]
let player12: [String: Any] = ["playerName":"Ben Finkelstein",     "experience":false,   "height":44,    "guardians":"Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["playerName":"Diego Soto",          "experience":true,    "height":41,    "guardians":"Robin and Sarika Soto"]
let player14: [String: Any] = ["playerName":"Chloe Alaska",        "experience":false,   "height":47,    "guardians":"David and Jamie Alaska"]
let player15: [String: Any] = ["playerName":"Arnold Willis",       "experience":false,   "height":43,    "guardians":"Claire Willis"]
let player16: [String: Any] = ["playerName":"Phillip Helm",        "experience":true,    "height":44,    "guardians":"Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["playerName":"Les Clay",            "experience":true,    "height":42,    "guardians":"Wynonna Brown"]
let player18: [String: Any] = ["playerName":"Herschel Krustofski", "experience":true,    "height":45,    "guardians":"Hyman and Rachel Krustofski"]

// Create var array of ^ 18 constants

var teamPlayers = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Create the individual teams

var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
var teamSharks: [[String: Any]] = []

// Create two groups, one of inexperienced playersa and one experienced

var experiencedPlayers: [[String: Any]] = []
var inexperiencedPlayers: [[String: Any]] = []


// loop through teamplayers and divide them into the individual experienced and unexperienced groups

for teamPlayer in teamPlayers {
    if teamPlayer["experience"] as! Bool == true {
        experiencedPlayers.append(teamPlayer)
    } else {
        inexperiencedPlayers.append(teamPlayer)
    }
}

// add logic to divide them into the teams, starting with experienced

for experiencedPlayer in experiencedPlayers {
    if teamDragons.count == teamRaptors.count {
        teamRaptors.append(experiencedPlayer)
    } else if teamRaptors.count > teamSharks.count {
        teamSharks.append(experiencedPlayer)
    } else {
        teamDragons.append(experiencedPlayer)
    }
}

// add same logic to divide inexperienced into teams

for inexperiencedPlayer in inexperiencedPlayers {
    if teamDragons.count == teamRaptors.count {
        teamRaptors.append(inexperiencedPlayer)
    } else if teamRaptors.count > teamSharks.count {
        teamSharks.append(inexperiencedPlayer)
    } else {
        teamDragons.append(inexperiencedPlayer)
    }
}

// let's verify whether it worked :D

teamDragons.count
teamSharks.count
teamRaptors.count

// create letters variable to store letters

var letters: [String] = []

// create all individual letters and append them to the letters variable

for teamRaptorsPlayer in teamRaptors {
    let letter: String = "Hello \(String(describing: teamRaptorsPlayer["guardians"]!)), \(String(describing: teamRaptorsPlayer["playerName"]!)) has made it into team Raptors! Their first practice is at March 18th, 1pm";
    letters.append(letter)
}

for teamDragonsPlayer in teamDragons {
    let letter: String = "Hello \(String(describing: teamDragonsPlayer["guardians"]!)), \(String(describing: teamDragonsPlayer["playerName"]!)) has made it into team Dragons! Their first practice is at March 17, 1pm";
    letters.append(letter)
}

for teamSharksPlayer in teamSharks {
    let letter: String = "Hello \(String(describing: teamSharksPlayer["guardians"]!)), \(String(describing: teamSharksPlayer["playerName"]!)) has made it into team Sharks! Their first practice is at March 17, 3pm"
    letters.append(letter)
}

// lets test whether the letters are all added, yay!

letters.count

// last but definitely not least, send out those letters to the parents and make em proud!

for letter in letters {
print(letter)
}

    





