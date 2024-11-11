//
//  FormView.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 12. 12..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import SwiftUI

struct FormView: View {
    
    @State private var textInField = "Type here"
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.headline)
            Form {
                TextField("Type here", text: $textInField)
                ForEach(0 ..< 10) { Text("Hello, I am number \($0)") }
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
