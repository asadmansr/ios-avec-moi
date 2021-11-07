//
//  QuizRepository.swift
//  AvecMoi
//
//  Created by Asad Mansoor on 2021-11-06.
//

import Foundation

let listQuizWords = [
    Quiz(
        question: "Bonjour",
        answer1: "Hello",
        answer2: "Goodbye",
        answer3: "Good night",
        answer4: "Thank you",
        correct: "Hello"
    ),
    Quiz(
        question: "Homme",
        answer1: "Woman",
        answer2: "Man",
        answer3: "Hello",
        answer4: "See you later",
        correct: "Man"
    ),
    Quiz(
        question: "Merci beaucoup",
        answer1: "You're welcome",
        answer2: "Hello",
        answer3: "Thank you very much",
        answer4: "No",
        correct: "Thank you very much"
    ),
    Quiz(
        question: "Temps",
        answer1: "Day",
        answer2: "Thank you",
        answer3: "Good night",
        answer4: "Time",
        correct: "Time"
    ),
    Quiz(
        question: "À plus",
        answer1: "See you later",
        answer2: "Thank you",
        answer3: "Hello",
        answer4: "Yes",
        correct: "See you later"
    ),
    Quiz(
        question: "Non",
        answer1: "No",
        answer2: "Yes",
        answer3: "Thank you",
        answer4: "See you later",
        correct: "No"
    ),
    Quiz(
        question: "Bonne Nuit",
        answer1: "Good morning",
        answer2: "No",
        answer3: "Good night",
        answer4: "Thank you",
        correct: "Good night"
    ),
    Quiz(
        question: "Jour",
        answer1: "Time",
        answer2: "Day",
        answer3: "Yes",
        answer4: "No",
        correct: "Day"
    ),
    Quiz(
        question: "Je vous en prie",
        answer1: "Thank you",
        answer2: "Good morning",
        answer3: "Good night",
        answer4: "You're welcome",
        correct: "You're welcome"
    ),
]

class QuizRepository {
    func getQuestion() -> Quiz {
        return listQuizWords.randomElement()!
    }
}
