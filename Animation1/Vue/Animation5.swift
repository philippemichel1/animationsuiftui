//
//  Animation5.swift
//  Animation1
//
//  Created by Philippe MICHEL on 17/11/2020.
//

import SwiftUI

struct Animation5: View {
    @State var tpsAnimation:CGFloat = 1
    var body: some View {
        Button(action: {
            self.tpsAnimation += 2
            
        }, label: {
            Text("Tape moi")
        })
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .foregroundColor(.black)
        .background(Color.red)
        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        // grossir le bouton
        .scaleEffect(tpsAnimation)
        // durée animation en seconde
        .animation(
            // tempporisation de 4 seconde avant le début
            Animation.easeInOut(duration:2).delay(1)
                //repete l'animation
                .repeatForever(autoreverses: true)
        )
    }
}

struct Animation5_Previews: PreviewProvider {
    static var previews: some View {
        Animation5()
    }
}
