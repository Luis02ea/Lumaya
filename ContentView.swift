//
//  ContentView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 28/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    @State private var showHolaView = false // Nueva variable para controlar la presentación de HolaView

    var body: some View {
        ZStack {
            Color("perla")
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("CONECTANDO")
                    .font(.system(size: 40, weight: .heavy))
                    .foregroundColor(Color("arena"))
                    .multilineTextAlignment(.center)

                Text("CON EL")
                    .font(.system(size: 40, weight: .heavy))
                    .foregroundColor(Color("arena"))
                    .multilineTextAlignment(.center)

                Image("cora")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                    .padding(.top, -140)

                Image("corazón")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500, height: 500)
                    .padding(.top, -170)
            }
            .padding(.vertical, 5)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                showHolaView = true // Presenta HolaView después de 1 segundo
            }
        }
        .fullScreenCover(isPresented: $showHolaView) { // Presenta HolaView como fullScreenCover
            HolaView()
        }
    }
}

#Preview {
    ContentView()
}
