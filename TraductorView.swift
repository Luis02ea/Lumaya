//
//  TraductorView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 28/03/25.
//

import SwiftUI

struct TraductorView: View {
    @State private var inputText: String = ""
    @State private var sourceLanguage: String = "Zapoteco"
    @State private var targetLanguage: String = "Mixteco"

    let languages = ["Zapoteco", "Mixteco", "Náhuatl", "Tzotzil", "Maya"]

    var body: some View {
        ZStack {
            // Fondo perla
            Color("perla").edgesIgnoringSafeArea(.all)

            VStack {
                Text("Traductor")
                    .font(.custom("Rosella-Deco", size: 36))
                    .foregroundColor(Color("dorado"))
                    .padding(.top, 20)

                Text("Ingresa la palabra que quieras traducir acá")
                    .italic()
                    .foregroundColor(Color("arena"))
                    .padding()

                // Selectores de idioma e imágenes
                HStack {
                    VStack {
                        Picker("De", selection: $sourceLanguage) {
                            ForEach(languages, id: \.self) { language in
                                Text(language)
                                    .foregroundColor(Color("arena")) // Texto en color arena
                                    .tag(language)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                    }

                    VStack(spacing: 1) {
                        Image("izquierda")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color("arena"))

                        Image("derecha")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color("arena"))
                    }

                    VStack {
                        Picker("A", selection: $targetLanguage) {
                            ForEach(languages, id: \.self) { language in
                                Text(language)
                                    .foregroundColor(Color("arena")) // Texto en color arena
                                    .tag(language)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                    }
                }
                .padding(.horizontal, 20)

                // Cuadro de texto
                TextField("Escribe aquí...", text: $inputText)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .frame(maxWidth: 300)
                    .frame(height: 100)
                    .padding(.horizontal, 20)

                Spacer()
            }

            // Barra de navegación inferior
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
    }
}

#Preview {
    TraductorView()
}
