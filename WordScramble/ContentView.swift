//
//  ContentView.swift
//  WordScramble
//
//  Created by Z.K   on 01/05/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var usedWords = [String]()
    @State private var rootWord: String = ""
    @State private var newWord: String = ""
    
    var name = ["zahid", "zain", "safwan"]
    
    
    var body: some View {
        
        NavigationStack {
            List {
                Section {
                    TextField("Enter your Word: ", text: $newWord)
                }
                
                Section {
                    ForEach (usedWords, id: \.self) { word in
                        HStack {
                            Image (systemName:"\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
            .navigationTitle(rootWord)
            .onSubmit {
                addNewWords()
            }
            .textInputAutocapitalization(.never)
        }
    }
    
    func addNewWords(){
        let answer = newWord.lowercased( ).trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard answer.count > 0 else { return }
        
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
        
        newWord = ""
    }
    
    
}


        
        
//        List {
//            ForEach(0..<5) {
//                Text("Dynamic row \($0)")
//            }
//        }
//        
//        List {
//            Text("Static row 1")
//            Text("Static row 2")
//            
//            ForEach(0..<5) {
//                Text("Dynamic row \($0)")
//            }
//            
//            Text("Static row 3")
//            Text("Static row 4")
//        }
//        
//        List {
//            Section("Section 1") {
//                Text("Static row 1")
//                Text("Static row 2")
//            }
//            
//            Section("Section 2") {
//                ForEach(0..<5) {
//                    Text("Dynamic row \($0)")
//                }
//            }
//            
//            Section("Section 3") {
//                Text("Static row 3")
//                Text("Static row 4")
//            }
//            
//            List(0..<5) {
//                Text("Dynamic row \($0)")
//            }
//            
//        }
//        .listStyle(.grouped)
//        //.padding()
//        
//        List {
//            Text("Row 1")
//            Text("Row 2")
//        }
//        .listStyle(.plain)
//        
//        List {
//            Section("Group 1") {
//                Text("Row 1")
//                Text("Row 2")
//            }
//        }
//        .listStyle(.grouped)
//        
//        List {
//            Section("Inset Group") {
//                Text("Row 1")
//                Text("Row 2")
//            }
//        }
//        .listStyle(.insetGrouped)
//        
//        List {
//            Text("Option 1")
//            Text("Option 2")
//        }
//        .listStyle(.sidebar)
//        
//        List {
//            Text("Auto Row 1")
//            Text("Auto Row 2")
//        }
//        .listStyle(.automatic)
//        
//        List {
//            Text("hello world")
//        }
//        
//        List {
//            ForEach(0...2, id: \.self){_ in
//                Text("zahid is a good boy")
//            }
//        }
//        
//        List {
//            Section ("section one"){
//                Text ("zahid khan")
//                ForEach(0..<3 , id: \.self){_ in
//                    Text("hello")
//                }
//            }
//        }
//        .listStyle(.sidebar)
//        
//        List(name, id: \.self){
//            Text ("\($0)")
//        }
        
//        if let fileURL = Bundle.main.url(forResource: "start", withExtension: "txt"),
//           let fileContent = try? String(contentsOf: fileURL, encoding: .utf8) {
//            Text(fileContent)
//        } else {
//            Text("Unable to load start.txt")
//        }
//        
//        let input = "a b c"
//        let words = input.components(separatedBy: " ")
//        
//        let input1 = """
//            a
//            b
//            c
//            """
//        let letters = input1.components(separatedBy: "\n")
//        let letter = letters.randomElement()
//        
//        
//        let trimmed = input1.trimmingCharacters(in: .whitespacesAndNewlines)
//        
//        
//        
//        let word = "Swift"
//        let checker = UITextChecker()
//        
//        let range = NSRange(location: 0, length: word.utf16.count)
//        
//        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
//        
//        let isGood = misspelledRange.location == NSNotFound
        
        


#Preview {
    ContentView()
}
