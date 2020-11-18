//
//  Animation6.swift
//  Animation1
//
//  Created by Philippe MICHEL on 17/11/2020.
//

import SwiftUI

struct Animation6: View {
    @State var tpsAnimation:CGFloat = 1
    var body: some View {
        Button(action: {
            self.tpsAnimation += 1
            
        }, label: {
            Text("Tape moi")
        })
        .padding(50)
        .foregroundColor(.black)
        .background(Color.red)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                // effet
                .scaleEffect(tpsAnimation)
                // opacite
                .opacity(Double(2 - tpsAnimation))
                // durée animation en seconde
                .animation(
                    // durée animation
                    Animation.easeInOut(duration:2)
                        //repeter l'animation
                        .repeatForever(autoreverses: true)
                )
        )
    }
}

struct Animation6_Previews: PreviewProvider {
    static var previews: some View {
        Animation6()
    }
}
