//
//  TitleModifier.swift
//  swift-ui-base
//
//  Created by Tyler iOS on 3/11/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import SwiftUI

struct MainTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.darkGray)
            .font(.largeTitle)
    }
}

struct MainTitle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Text("Hello, World!")
                .previewLayout(.sizeThatFits)
            
            Text("Hello, World!")
                .modifier(MainTitle())
                .previewLayout(.sizeThatFits)
        }
    }
}
