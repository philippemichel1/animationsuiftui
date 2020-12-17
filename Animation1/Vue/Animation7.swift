//
//  Animation7.swift
//  Animation1
//
//  Created by Philippe MICHEL on 17/12/2020.
//

import SwiftUI

struct Animation7: View {
    @State var rotation = 0.0
    var body: some View {
        Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(rotation))
                    .animation(Animation.easeInOut(duration: 3).delay(1))
                    .onTapGesture {
                        self.rotation += 360
                    }
    }
}

struct Animation7_Previews: PreviewProvider {
    static var previews: some View {
        Animation7()
    }
}
