//
//  BoutonSansAnim.swift
//  Animation1
//
//  Created by Philippe MICHEL on 19/11/2020.
//

import SwiftUI

struct BoutonSansAnim: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("clique moi")
        })
        .padding(50)
        .foregroundColor(.black)
        .background(Color.red)
        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        
        }
}

struct BoutonSansAnim_Previews: PreviewProvider {
    static var previews: some View {
        BoutonSansAnim()
    }
}
