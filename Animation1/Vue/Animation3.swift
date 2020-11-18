//
//  Animation3.swift
//  Animation1
//
//  Created by Philippe MICHEL on 17/11/2020.
//

import SwiftUI

struct Animation3: View {
    @State var tpsAnimation:CGFloat = 1
    var body: some View {
        Button(action: {
            self.tpsAnimation += 2
            
        }, label: {
            Text("Tape moi")
        })
        .padding(50)
        .foregroundColor(.black)
        .background(Color.red)
        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        // grossir le bouton
        .scaleEffect(tpsAnimation)
        // durée animation en seconde
        .animation(.easeInOut(duration:3))
    }
}

struct Animation3_Previews: PreviewProvider {
    static var previews: some View {
        Animation3()
    }
}
