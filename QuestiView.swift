//
//  QuestiView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 28/03/25.
//

import SwiftUI

struct QuestiView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            ZStack {
                Color("perla").edgesIgnoringSafeArea(.all)

                VStack {
                    Text("Misión")
                        .font(.custom("Rosella-Deco", size: 36))
                        .foregroundColor(Color("dorado"))
                        .padding(.top, 50)
                    Spacer()

                    Text("Preservar y difundir las lenguas indígenas mediante una plataforma interactiva que promueva el aprendizaje, la accesibilidad y la valoración de la diversidad lingüística. A través de herramientas innovadoras como un diccionario, traductor, mapa interactivo, juegos y canciones, buscamos fortalecer el reconocimiento y uso de estas lenguas en la sociedad contemporánea.")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(Color("arena"))
                        .padding(.horizontal, 50) // Aumentamos el padding horizontal

                    Text("Visión")
                        .font(.custom("Rosella-Deco", size: 36))
                        .foregroundColor(Color("dorado"))
                        .padding(.top, 30)
                    Spacer()

                    Text("Ser la aplicación líder en la revitalización y promoción de las lenguas indígenas, conectando a hablantes, estudiantes e interesados de todo el mundo. Aspiramos a contribuir a la preservación del patrimonio lingüístico, fomentando el orgullo cultural y la transmisión intergeneracional de estas lenguas en un entorno digital accesible e inclusivo.")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(Color("arena"))
                        .padding(.horizontal, 50) // Aumentamos el padding horizontal

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

                                    NavigationLink(destination: DiccionarioView().navigationBarBackButtonHidden(true)) {
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
            .navigationBarBackButtonHidden(true) // Ocultamos la barra de retroceso
        }
    }
}

#Preview {
    QuestiView()
}
