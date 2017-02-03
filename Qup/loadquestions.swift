//
//  loadquestions.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-02-02.
//  Copyright © 2017 Quizz. All rights reserved.
//

import Foundation
import UIKit

class Loadquestions {
    class func Englishpremierleague() -> [Question] {
        let question1 = Question(question: "Who is the all time top goal scorer in the BPL?", image: nil, option1: "Wayne Rooney", option2: "Thierry Henry", option3: "Alan Shearer", option4: "Nicklas Bendtner", correctAnswer: "Alan Shearer")
        
        let question2 = Question(question: "Which team has won the most BPL titles?", image: nil, option1: "Liverpool", option2: "Nottingham Forest", option3: "Arsenal", option4: "Manchester United", correctAnswer: "Manchester United")
        
        let question3 = Question(question: "Which player has registered the most assists in premier league history?", image: nil, option1: "Frank Lampard", option2: "Kim Källström", option3: "Dennis Bergkamp", option4: "Steven Gerrard", correctAnswer: "Frank Lampard")
        
        let question4 = Question(question: "Which team has managed to accumulate the lowest amounts of points in a single season?", image: nil, option1: "Sunderland", option2: "Swansea City", option3: "Liverpool", option4: "Derby County", correctAnswer: "Derby County")
        
        let question5 = Question(question: "Who has played the most amount of games in the premier league?", image: nil, option1: "Ryan Giggs", option2: "Tony Adams", option3: "Sol Campbell", option4: "Peter Schmeichel", correctAnswer: "Ryan Giggs")
        
        let question6 = Question(question: "In 2015 Jamie Vardy broke the record for most consecutive matches scored in. How many consecutive matches did he score in?", image: nil, option1: "15", option2: "21", option3: "11", option4: "10", correctAnswer: "11")
        
        let question7 = Question(question: "Which player has scored the most own-goals in a single season?", image: nil, option1: "Dejan Lovren", option2: "Martin Skrtel", option3: "Jack Hobbs", option4: "Martin Kelly", correctAnswer: "Martin Skrtel")
        
        let question8 = Question(question: "Which manager has won the most consecutive Premier League Manager of the Month awards?", image: nil, option1: "Sir Alex Ferguson", option2: "Antonio Conte", option3: "Brendan Rogers", option4: "Arsene Wenger", correctAnswer: "Antonio Conte")
        
        let question9 = Question(question: "Which team has finished 4th the most number of times in Premier League history?", image: nil, option1: "Liverpool", option2: "Chelsea", option3: "Manchester United", option4: "Arsenal", correctAnswer: "Arsenal")
        
        let question10 = Question(question: "Who has scored the fastest ever Premier League hat-trick?", image: nil, option1: "Cristiano Ronaldo", option2: "Gareth Bale", option3: "Thierry Henry", option4: "Sadio Mané", correctAnswer: "Sadio Mané")

        
        let questionArray: [Question] = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]
        return questionArray
    }
    
    class func Seriea() -> [Question] {
        let question1 = Question(question: "Who holds the record for most goals in a single season in the Serie A?", image: nil, option1: "David Trezeguet", option2: "Hernán Crespo", option3: "Zinedine Zidane", option4: "Gonzalo Higuain", correctAnswer: "Gonzalo Higuain")
        
        let question2 = Question(question: "Which team had two serie A titles stripped off of team in 2006?", image: nil, option1: "AC Milan", option2: "Juventus", option3: "Inter", option4: "Fiorentina", correctAnswer: "Juventus")
        
        let question3 = Question(question: "Which player has played the most games in the Serie A of all time?", image: nil, option1: "Francesco Totti", option2: "Paolo Maldini", option3: "Gianluigi Buffon", option4: "Javier Zanetti", correctAnswer: "Paolo Maldini")
        
        let question4 = Question(question: "Which player has won the most consecutive golden boots in the Serie A?", image: nil, option1: "Gunnar Nordahl", option2: "Michel Platini", option3: "Zlatan Ibrahimovic", option4: "Antonio Di Natale", correctAnswer: "Gunnar Nordahl")
        
        let question5 = Question(question: "Which team has won the most consecutive wins in the Serie A with 17 consecutive wins?", image: nil, option1: "Juventus", option2: "Inter", option3: "AC Milan", option4: "AS Roma", correctAnswer: "Inter")
        
        let question6 = Question(question: "Which team holds the record for most amounts of wins in a single season in the serie A with 33 wins?", image: nil, option1: "Udinese", option2: "Juventus", option3: "AC Milan", option4: "Inter", correctAnswer: "Juventus")
        
        let question7 = Question(question: "Who has scored the most goals from penalties in the Serie A?", image: nil, option1: "Roberto Baggio", option2: "Francesco Totti", option3: "Gonzalo Higuain", option4: "Zlatan Ibrahimovic", correctAnswer: "Francesco Totti")
        
        let question8 = Question(question: "Who has scored the most Serie A goals of all time?", image: nil, option1: "Francesco Totti", option2: "Gunnar Nordahl", option3: "Kurt Hamrin", option4: "Silvio Piola", correctAnswer: "Silvio Piola")
        
        let question9 = Question(question: "Who is the only german to have scored 100+ goals in the Serie A?", image: nil, option1: "Oliver Bierhoff", option2: "Miroslav Klose", option3: "Lothar Matthäus", option4: "Mario Gomez", correctAnswer: "Oliver Bierhoff")
        
        let question10 = Question(question: "Who won the Serie A Player of the Season for the 2015/16 season?", image: nil, option1: "Paul Pogba", option2: "Paulo Dybala", option3: "Gianluigi Donnarumma", option4: "Gonzalo Higuain", correctAnswer: "Gonzalo Higuain")
        
        let questionArray: [Question] = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]
        return questionArray
    }
    
    class func Bundesliga() -> [Question] {
        let question1 = Question(question: "Who is the record holder for the fastest Bundesliga Hat-trick?", image: nil, option1: "Alexander Meier", option2: "Claudio Pizarro", option3: "Thomas Müller", option4: "Robert Lewandowski", correctAnswer: "Robert Lewandowski")
        
        let question2 = Question(question: "Which team has played the most consecutive seasons in the Bundesliga?", image: nil, option1: "Hamburger SV", option2: "Hannover 96", option3: "FC Bayern München", option4: "VfB Stuttgart", correctAnswer: "Hamburger SV")
        
        let question3 = Question(question: "Which club in the german top flight has won exactly 1 league title, 4 german cups, 1 europa league and lost in the 1959/60 champions league final?", image: nil, option1: "Hannover 96", option2: "Eintracht Frankfurt", option3: "FC Kaiserslautern", option4: "FC Schalke 04", correctAnswer: "Eintracht Frankfurt")
        
        let question4 = Question(question: "Which club is the only team to have scored in every single game in an entire season?", image: nil, option1: "Bayern München", option2: "FC Köln", option3: "Borussia Dortmund", option4: "Hertha BSC", correctAnswer: "FC Köln")
        
        let question5 = Question(question: "In the 2012/13 season Bayern Münich broke the record for the highest amount of points in a single season. How many points did they get?", image: nil, option1: "97", option2: "102", option3: "88", option4: "91", correctAnswer: "91")
        
        let question6 = Question(question: "Which club has had the worst goal difference in Bundesliga history?", image: nil, option1: "Hertha BSC", option2: "TSV 1860 München", option3: "Tasmania Berlin", option4: "VfB Stuttgart", correctAnswer: "Tasmania Berlin")
        
        let question7 = Question(question: "Which team has been relegated from the Bundesliga the most amount of times?", image: nil, option1: "FC Nürnberg", option2: "FC Kaiserslautern", option3: "Karlsruher SC", option4: "Ingolstadt", correctAnswer: "FC Nürnberg")
        
        let question8 = Question(question: "In 1978 Borussia Mönchengladbach broke the record of biggest win in Bundesliga history against Borussia Dortmund, what was the scoreline?", image: nil, option1: "11-1", option2: "16-0", option3: "12-0", option4: "9-1", correctAnswer: "12-0")
        
        let question9 = Question(question: "Which player has won the most Bundesliga games?", image: nil, option1: "Bernd Hölzenbein", option2: "Oliver Kahn", option3: "Claudio Pizarro", option4: "Franz Beckenbauer", correctAnswer: "Oliver Kahn")
        
        let question10 = Question(question: "Who has scored the most amount of Bundesliga goals?", image: nil, option1: "Thomas Müller", option2: "Miroslav Klose", option3: "Klaus Fischer", option4: "Gerd Müller", correctAnswer: "Gerd Müller")
        
        let questionArray: [Question] = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]
        return questionArray
        
    }
    
    class func Primeiraliga() {
        
    }
    
    class func Allsvenskan() {
        
    }
    
    class func Laliga() {
        
    }
}
