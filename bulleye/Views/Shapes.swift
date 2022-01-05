//
//  Shapes.swift
//  bulleye
//
//  Created by Tracy Bonham on 11/3/21.
//

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    var body: some View {
        VStack {
            if !wideShapes {
            Circle()
                .strokeBorder(Color.blue, lineWidth:20.0)
                .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .transition(.scale)
            }
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0 )
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0 )
            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0 )
            Button(action: {
                withAnimation {
                wideShapes.toggle()
                }
            }) {
                Text("Animate!")
            }
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
