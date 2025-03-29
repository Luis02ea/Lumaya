//
//  HolaView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 28/03/25.
//

import SwiftUI

struct HolaView: View {
    @State private var saludoIndex = 0
    let saludos = ["¡Hola!", "¡Na xiña!", "¡Niltze!", "¡Kuni!", "¡K'usi ba!"]
    @State private var showMenuView = false

    var body: some View {
        VStack(spacing: 30) {
            Text(saludos[saludoIndex])
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(Color("dorado"))
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
                        withAnimation {
                            saludoIndex = (saludoIndex + 1) % saludos.count
                        }
                    }
                }

            Image("Nicté")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .padding(.top, 40)

            Text("Me llamo Nicté y quiero llevarte a descubrir la belleza de mi país")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(Color("arena"))
                .multilineTextAlignment(.center)
                .padding(.top, 50)
        }
        .padding()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                showMenuView = true
            }
        }
        .fullScreenCover(isPresented: $showMenuView) {
            MenuView()
        }
    }
}

struct HolaView_Previews: PreviewProvider {
    static var previews: some View {
        HolaView()
    }
}
