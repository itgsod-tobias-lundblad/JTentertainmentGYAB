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
        
        let question3 = Question(question: "Which player has registered the most assists in premier league history?", image: nil, option1: "Frank Lampard", option2: "Ryan Giggs", option3: "Dennis Bergkamp", option4: "Steven Gerrard", correctAnswer: "Ryan Giggs")
        
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
        
        let question3 = Question(question: "Which team has lost the most amount of games in Bundesliga history?", image: nil, option1: "Hannover 96", option2: "Eintracht Frankfurt", option3: "FC Kaiserslautern", option4: "FC Schalke 04", correctAnswer: "Eintracht Frankfurt")
        
        let question4 = Question(question: "Which club is the only team to have scored in every single game in an entire season?", image: nil, option1: "Bayern München", option2: "FC Köln", option3: "Borussia Dortmund", option4: "Hertha BSC", correctAnswer: "FC Köln")
        
        let question5 = Question(question: "Bayern München hold the reacord for the most amount of points accumulated in a single Bundesliga season. How many points did they get?", image: nil, option1: "97", option2: "102", option3: "88", option4: "91", correctAnswer: "91")
        
        let question6 = Question(question: "Which club has had the worst goal difference in a single Bundesliga season?", image: nil, option1: "Hertha BSC", option2: "TSV 1860 München", option3: "Tasmania Berlin", option4: "VfB Stuttgart", correctAnswer: "Tasmania Berlin")
        
        let question7 = Question(question: "Which team has been relegated from the Bundesliga the most amount of times?", image: nil, option1: "FC Nürnberg", option2: "FC Kaiserslautern", option3: "Karlsruher SC", option4: "Ingolstadt", correctAnswer: "FC Nürnberg")
        
        let question8 = Question(question: "In 1978 Borussia Mönchengladbach broke the record of biggest win in Bundesliga history against Borussia Dortmund, what was the scoreline?", image: nil, option1: "11-1", option2: "16-0", option3: "12-0", option4: "9-1", correctAnswer: "12-0")
        
        let question9 = Question(question: "Which player has won the most Bundesliga games?", image: nil, option1: "Bernd Hölzenbein", option2: "Oliver Kahn", option3: "Claudio Pizarro", option4: "Franz Beckenbauer", correctAnswer: "Oliver Kahn")
        
        let question10 = Question(question: "Who has scored the most amount of Bundesliga goals?", image: nil, option1: "Thomas Müller", option2: "Miroslav Klose", option3: "Klaus Fischer", option4: "Gerd Müller", correctAnswer: "Gerd Müller")
        
        let questionArray: [Question] = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]
        return questionArray
    }
    
    class func Primeiraliga() -> [Question] {
        let question1 = Question(question: "Which team has won the most Primeira Liga titles?", image: nil, option1: "FC Porto", option2: "SC Braga", option3: "Sporting Clube de  Portugal", option4: "SL Benfica", correctAnswer: "SL Benfica")
        
        let question2 = Question(question: "Which team has the highest average attendance with 48 500 attenders per game?", image: nil, option1: "SL Benfica", option2: "SC Braga", option3: "FC Porto", option4: "Sporting Clube de  Portugal", correctAnswer: "SL Benfica")
        
        let question3 = Question(question: "Who finished top goal scorer for the Primeira Liga 2015/16 season with 32 goals?", image: nil, option1: "Yacine Brahimi", option2: "Islam Slimani", option3: "Jonas", option4: "Konstantinos Mitroglu", correctAnswer: "Jonas")
        
        let question4 = Question(question: "Which player won the most Player of the Month awards in the 2015/16 season?", image: nil, option1: "Jonas", option2: "Joao Mário", option3: "André André", option4: "Renato Sanches", correctAnswer: "Joao Mário")
        
        let question5 = Question(question: "Which club has won the Portuguese Cup the most amount of times?", image: nil, option1: "SC Braga", option2: "SL Benfica", option3: "FC Porto", option4: "Boavista", correctAnswer: "SL Benfica")
        
        let question6 = Question(question: "Which team has had the lowest ever average attendance with an average of 1579?", image: nil, option1: "FC Porto", option2: "Arouca", option3: "Penafiel", option4: "Estoriel", correctAnswer: "Penafiel")
        
        let question7 = Question(question: "Which team scored the lowest amount of goals in the 2015/16 season?", image: nil, option1: "Academica", option2: "Boavista", option3: "Nacional", option4: "Rio Ave", correctAnswer: "Boavista")
        
        let question8 = Question(question: "How many teams play in the Primeira Liga each season?", image: nil, option1: "15", option2: "20", option3: "16", option4: "18", correctAnswer: "18")
        
        let question9 = Question(question: "Which player has won the most consecutive Primeira Liga golden boots?", image: nil, option1: "Jackson Martinez", option2: "Jonas", option3: "Mário Jardel", option4: "Oscar Cardozo", correctAnswer: "Jackson Martinez")
        
        let question10 = Question(question: "Which team has won the most consecutive league titles with 5 titles in a row? ", image: nil, option1: "SL Benfica", option2: "Sporting club de  Portugal", option3: "SC Braga", option4: "FC Porto", correctAnswer: "FC Porto")
        
        let questionArray: [Question] = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]
        return questionArray
    }
    
    class func Allsvenskan() -> [Question] {
        let question1 = Question(question: "Who won the golden boot in the 2016 Allsvenskan season?", image: nil, option1: "John Owoeri", option2: "Marcus Rosenberg", option3: "Alexander Isak", option4: "Sebastian Andersson", correctAnswer: "John Owoeri")
        
        let question2 = Question(question: "Which team has won the most Allsvenskan league titles?", image: nil, option1: "IFK Göteborg", option2: "Djurgårdens IF", option3: "Malmö FF", option4: "Kalmar FF", correctAnswer: "Malmö FF")
        
        let question3 = Question(question: "Which team is the only Allsvenskan team to have won the Europa League?", image: nil, option1: "IFK Göteborg", option2: "IFK Norrköping", option3: "Malmö FF", option4: "AIK", correctAnswer: "IFK Göteborg")
        
        let question4 = Question(question: "Which team won the first ever Allsvenskan season?", image: nil, option1: "BK Häcken", option2: "GAIS", option3: "Trelleborgs IF", option4: "Örgryte IS", correctAnswer: "GAIS")
        
        let question5 = Question(question: "How many teams were there in Allsvenskan during it's first season?", image: nil, option1: "16", option2: "20", option3: "12", option4: "15", correctAnswer: "12")
        
        let question6 = Question(question: "Which team has played the most amount of seasons in Allsvenskan?", image: nil, option1: "AIK", option2: "Malmö FF", option3: "Åtvidabergs FF", option4: "Falkenberg FF", correctAnswer: "AIK")
        
        let question7 = Question(question: "Which city has won the most league titles?", image: nil, option1: "Stockholm", option2: "Göteborg", option3: "Malmö", option4: "Norrköping", correctAnswer: "Göteborg")
        
        let question8 = Question(question: "Between 1982-90 the league winners were decided by a play-off system. Which team won the first 3 play-offs taking 3 league titles in a row?", image: nil, option1: "AIK", option2: "Malmö FF", option3: "IFK Norrköping", option4: "IFK Göteborg", correctAnswer: "IFK Göteborg")
        
        let question9 = Question(question: "Which team holds the record for highest average attendance in a single season?", image: nil, option1: "IFK Göteborg", option2: "Malmö FF", option3: "Helsingborg IF", option4: "Hammarby IF", correctAnswer: "Hammarby IF")
        
        let question10 = Question(question: "Who has scored the highest amount of goals in a single season with 39 goals?", image: nil, option1: "Filip Johansson", option2: "Markus Rosenberg", option3: "Jan Mattson", option4: "Imad Khalili", correctAnswer: "Filip Johansson")
        
        let questionArray: [Question] = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]
        return questionArray
    }
    
    class func Laliga() -> [Question] {
        let question1 = Question(question: "Which player has scored the most amount of la liga goals?", image: nil, option1: "Cristiano Ronaldo", option2: "Lionel Messi", option3: "Hugo Sánchez", option4: "Raúl", correctAnswer: "Lionel Messi")
        
        let question2 = Question(question: "Which player has had the most appearances in la liga history?", image: nil, option1: "Xavi", option2: "Raúl", option3: "Iker Casillas", option4: "Andoni Zubizaretta", correctAnswer: "Andoni Zubizaretta")
        
        let question3 = Question(question: "Which is the most expensive la liga player ever?", image: nil, option1: "Gareth Bale", option2: "Neymar", option3: "Cristiano Ronaldo", option4: "Luis Suarez", correctAnswer: "Gareth Bale")
        
        let question4 = Question(question: "Which are the only two players to have played for both Barcelona and Real Madrid?", image: nil, option1: "Zinedine Zidane and Kaka", option2: "Kaka and Luis Figo", option3: "Luis Figo and Ronaldo", option4: "Ronaldo and Roberto Carlos", correctAnswer: "Luis Figo and Ronaldo")
        
        let question5 = Question(question: "Who holds the record for most goals scored in a single season with 48 goals?", image: nil, option1: "Ronaldo", option2: "Lionel Messi", option3: "Cristiano Ronaldo", option4: "Zlatan Ibrahimovic", correctAnswer: "Cristiano Ronaldo")
        
        let question6 = Question(question: "Which team has won the most La Liga titles?", image: nil, option1: "FC Barcelona", option2: "Athletic Bilbao", option3: "Atlético Madrid", option4: "Real Madrid C.F.", correctAnswer: "Real Madrid C.F.")
        
        let question7 = Question(question: "Which player won the 2015/16 golden boot?", image: nil, option1: "Lionel Messi", option2: "Luis Suarez", option3: "Cristiano Ronaldo", option4: "Gareth Bale", correctAnswer: "Luis Suarez")
        
        let question8 = Question(question: "Which player has received the most red cards in La Liga history?", image: nil, option1: "Sergio Ramos", option2: "Pepe", option3: "Carles Puyol", option4: "Sergio Busquets", correctAnswer: "Sergio Ramos")
        
        let question9 = Question(question: "Which player is the top appearance maker for FC Barcelona?", image: nil, option1: "Lionel Messi", option2: "Xavi", option3: "Andrés Iniesta", option4: "Gerard Piqué", correctAnswer: "Xavi")
        
        let question10 = Question(question: "Which unexpected team won the 2013/14 La Liga season?", image: nil, option1: "Atlético Madrid", option2: "Deportivo de La Coruña", option3: "Real Betis", option4: "Athletic Bilbao", correctAnswer: "Atlético Madrid")
        
        let questionArray: [Question] = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]
        return questionArray
        
    }
}
