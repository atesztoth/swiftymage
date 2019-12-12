//
//  PickerView.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 12. 12..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    
    static let choices = ["Pizza", "Greek food", "Healthy food"]
    
    @State private var selected = choices.first!
    
    var body: some View {
        Picker("Select your food", selection: $selected) {
            ForEach (0 ..< PickerView.choices.count) { Text(PickerView.self.choices[$0]) }
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
