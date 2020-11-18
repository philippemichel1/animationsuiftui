//
//  ContentView.swift
//  Animation1
//
//  Created by Philippe MICHEL on 16/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State var montrerVue = false
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    NavigationLink("Bouton Agrandir", destination: Animation1())
                    NavigationLink("Rebondir", destination: Animation2())
                    NavigationLink("Durée", destination: Animation3())
                    NavigationLink("Durée + temporisation", destination: Animation4())
                    NavigationLink("Répeter l'animation" , destination: Animation5())
                    NavigationLink("Rayonnement" , destination: Animation6())
                }
                .navigationTitle("Animations")
            }
            
            // presentation de vue avec un bouton 
            Button(action: {
                self.montrerVue.toggle()
            }, label: {
                Text("Montrer vue")
            })
            .sheet(isPresented: $montrerVue) {
                Animation2()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
