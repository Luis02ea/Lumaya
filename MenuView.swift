//
//  MenuView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 28/03/25.
//
import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("perla").edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer().frame(height: 100)

                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: -18), count: 2), spacing: 40) {
                        NavigationLink(destination: DiccionarioView().navigationBarBackButtonHidden(true)) {
                            Image("diccionario")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 180)
                        }

                        NavigationLink(destination: TraductorView().navigationBarBackButtonHidden(true)) {
                            Image("traductor")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 180)
                        }

                        NavigationLink(destination: ARView().navigationBarBackButtonHidden(true)) {
                            Image("ar")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 180)
                        }

                        NavigationLink(destination: MapaView().navigationBarBackButtonHidden(true)) {
                            Image("mapa")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 180)
                        }

                        NavigationLink(destination: JuegosView().navigationBarBackButtonHidden(true)) {
                            Image("juegos")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 180)
                        }

                        NavigationLink(destination: CancionesView().navigationBarBackButtonHidden(true)) {
                            Image("canciones")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 180)
                        }
                    }
                    .padding(.horizontal)

                    Spacer().frame(height: 50)

                    HStack(spacing: 60) {
                        Rectangle()
                            .fill(Color("dorado").opacity(0.4))
                            .frame(width: 450, height: 90)
                            .cornerRadius(10)
                            .overlay(
                                HStack(spacing: 60) {
                                    NavigationLink(destination: ContentView()) {
                                        Image("home")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 50)
                                    }

                                    NavigationLink(destination: MenuView()) {
                                        Image("menu")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 60)
                                    }

                                    NavigationLink(destination: QuestiView()) {
                                        Image("questi")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 50)
                                    }
                                }
                            )
                    }
                    .padding(.bottom)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    MenuView()
}
