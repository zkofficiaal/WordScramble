//
//  ContentView.swift
//  WordScramble
//
//  Created by Z.K   on 01/05/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""

    
    
    var names = [ "zahid", "ali", "zain"]
    var integer = [1,2,3,4,5]
    
    
    var body: some View {
         
        List {
            Section ("first header"){
                Text ("hello!")
                Text ("hello!")
            }
          //  .listStyle(.grouped)
            
            Section ("second header") {
                Text ("hello!")
                Text ("hello!")
            }
            
        }
        .listStyle(.grouped)
        
        List {
            Section("Section 1") {
                Text("Static row 1")
                Text("Static row 2")
            }

            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }
        }
        .listStyle(.plain)

        
        List {
            ForEach(0..<3) {
                Text("Dynamic row \($0)")
            }
        }
        
        List (1..<4){
            Text ("Dynamic row \($0)")
        }

        List (names, id: \.self){
            Text ($0)
        }
        .listStyle(.sidebar)
        
        List (integer, id: \.self){
            Text("row: \($0)")
        }
        
        
        //        List {
        //            ForEach(1...170, id: \.self){
        //                number in
        //                Text("Hello World")
        //            }
        //        }
        //
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
//        List(names, id: \.self){
//            Text ("\($0)")
//        }
        
//        Text(loadFile())
        
//        NavigationStack {
//                List {
//                    Section {
//                        TextField("Enter your word", text: $newWord)
//                            .textInputAutocapitalization(.never)
//                    }
//
//                    Section {
//                        ForEach(usedWords, id: \.self) { word in
//                            HStack {
//                                Image(systemName: "\(word.count).circle")
//                                Text(word)
//                            }
//                        }
//                    }
//                }
//                .navigationTitle(rootWord)
//                .onSubmit(addNewWord)
//                .onAppear(perform: startGame)
//            }
        
        List{
            Text ("zahid khan")
        }
        
        
        
        
        
        NavigationStack {
            List {
                Section {
                     TextField ("enter your word:", text: $newWord)
                        .textInputAutocapitalization(.never)
                }
                
                Section {
                    ForEach (usedWords, id: \.self) { word in
                        Text (word)
                    }
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
        }
        
        
    }
    
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard answer.count > 0 else { return }
        
        usedWords.insert(answer, at: 0)
        
        newWord = ""
    }
    
    
//    func addNewWord() {
//        // lowercase and trim whitespace
//        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
//
//        // exit if empty
//        guard answer.count > 0 else { return }
//
//        // insert at top with animation
//        withAnimation {
//            usedWords.insert(answer, at: 0)
//        }
//
//        // reset text field
//        newWord = ""
//    }
//    
//    func startGame() {
//           // 1. Find the URL for start.txt in our app bundle
//           if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
//               // 2. Load start.txt into a string
//               if let startWords = try? String(contentsOf: startWordsURL, encoding: .utf8) {
//                   // 3. Split the string into an array of words
//                   let allWords = startWords.components(separatedBy: "\n")
//
//                   // 4. Pick one random word, or use fallback
//                   rootWord = allWords.randomElement() ?? "silkworm"
//
//                   return
//               }
//           }
//
//           // If we reach here, something failed → crash
//           fatalError("Could not load start.txt from bundle.")
//       }
//    

    
//    func loadFile() -> String {
//        if let fileUrl = Bundle.main.url(forResource: "start", withExtension: "txt"){
//            if let fileContent = try? String(contentsOf: fileUrl, encoding: .utf8){
//                return fileContent
//            }
//        }
//        return "File not found"
//    }
    
    
    
    
    
}

#Preview {
    ContentView()
}
