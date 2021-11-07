//
//  PracticeView.swift
//  AvecMoi
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI

enum QuestionItem {
    case questionOne
    case questionTwo
    case questionThree
    case questionFour
    case questionFive
}

struct PracticeView: View {
    
    @State private var selectedQuestion: QuestionItem = .questionOne
    @State private var correctAnswer: Int = 0
    @State private var showingAlert = false
    
    var body: some View {
        VStack(alignment: .leading) {
            let quiz = QuizRepository().getQuestion()
            VStack {
                Text(getQuestion(item: selectedQuestion) + " - " + quiz.question!)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                
                Button(quiz.answer1!) {
                    checkAnswer(quiz: quiz, selectedAnswer: quiz.answer1!)
                    switchQuestion(item: selectedQuestion)
                }
                .padding(.top, 14)
                .padding(.bottom, 14)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(16)
                
                Button(quiz.answer2!) {
                    checkAnswer(quiz: quiz, selectedAnswer: quiz.answer2!)
                    switchQuestion(item: selectedQuestion)
                }
                .padding(.top, 14)
                .padding(.bottom, 14)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(16)
                
                Button(quiz.answer3!) {
                    checkAnswer(quiz: quiz, selectedAnswer: quiz.answer3!)
                    switchQuestion(item: selectedQuestion)
                }
                .padding(.top, 14)
                .padding(.bottom, 14)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(16)
                
                Button(quiz.answer4!) {
                    checkAnswer(quiz: quiz, selectedAnswer: quiz.answer4!)
                    switchQuestion(item: selectedQuestion)
                }
                .padding(.top, 14)
                .padding(.bottom, 14)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(16)
                
                Spacer()
                Text("Correct: \(correctAnswer) out of 5")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 36)
            }.alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Quiz Completed!"),
                    message: Text("You got \(correctAnswer) out of 5 question correct"),
                    dismissButton: .default(Text("Retry!")) {
                        selectedQuestion = .questionOne
                        correctAnswer = 0
                    }
                )
            }
            
            Spacer()
            
        }
        .padding()
        .background(Color(red: 242/255, green: 242/255, blue: 247/255))
    }
    
    func getQuestion(item: QuestionItem) -> String {
        switch item {
        case .questionOne:
            return "Question 1"
        case .questionTwo:
            return "Question 2"
        case .questionThree:
            return "Question 3"
        case .questionFour:
            return "Question 4"
        case .questionFive:
            return "Question 5"
        }
    }
    
    func switchQuestion(item: QuestionItem) {
        if (selectedQuestion == .questionOne) {
            selectedQuestion = .questionTwo
        } else if (selectedQuestion == .questionTwo) {
            selectedQuestion = .questionThree
        } else if (selectedQuestion == .questionThree) {
            selectedQuestion = .questionFour
        } else if (selectedQuestion == .questionFour) {
            selectedQuestion = .questionFive
        } else if (selectedQuestion == .questionFive) {
            showingAlert = true
        }
    }
    
    func checkAnswer(quiz: Quiz, selectedAnswer: String) {
        if (selectedAnswer == quiz.correct) {
            correctAnswer += 1
        }
    }
}

