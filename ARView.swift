//
//  ARView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 29/03/25.
//

import SwiftUI

struct ARView: View {
    let models = [
        "Edzna_-_Maya_Temple.usdz",
        "Mixtec_Mask.usdz",
        "Statue_of_Xochipilli.usdz",
        "Zapotec_funerary_urn_600-900_CE.usdz"
    ]

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                Color("perla").edgesIgnoringSafeArea(.all)

                VStack {
                    Text("AR")
                        .font(.custom("Rosella-Deco", size: 36))
                        .foregroundColor(Color("dorado"))
                        .padding(.top, 40)

                    Spacer().frame(height: 80)

                    VStack(spacing: 60) {
                        ForEach(models, id: \.self) { modelName in
                            Text(modelName.replacingOccurrences(of: ".usdz", with: ""))
                                .padding()
                                .frame(maxWidth: 290, minHeight: 80)
                                .background(Color("arena"))
                                .foregroundColor(.white)
                                .cornerRadius(15) // Redondear los bordes
                        }
                    }
                    .padding(.horizontal, 20)

                    Spacer()
                }

                VStack {
                    Spacer()
                    HStack(spacing: 80) {
                        Rectangle()
                            .fill(Color("dorado").opacity(0.4))
                            .frame(width: 450, height: 90)
                            .cornerRadius(10)
                            .overlay(
                                HStack(spacing: 60) {
                                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                                        Image("home")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 50)
                                    }

                                    NavigationLink(destination: MenuView().navigationBarBackButtonHidden(true)) {
                                        Image("menu")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 60)
                                    }

                                    NavigationLink(destination: QuestiView().navigationBarBackButtonHidden(true)) {
                                        Image("questi")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 50)
                                    }
                                }
                            )
                    }
                    .padding(.bottom, -35)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ARView()
}
