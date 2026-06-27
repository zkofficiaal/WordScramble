//
//  ContentView.swift
//  WordScramble
//
//  Created by Z.K   on 01/05/2026.
//

import SwiftUI

struct ContentView: View {
    
    var name = ["zahid", "zain", "safwan"]
    
    
    var body: some View {
        
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
        
        if let fileURL = Bundle.main.url(forResource: "start", withExtension: "txt"),
           let fileContent = try? String(contentsOf: fileURL, encoding: .utf8) {
            Text(fileContent)
        } else {
            Text("Unable to load start.txt")
        }
    }
}

#Preview {
    ContentView()
}
