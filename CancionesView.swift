//
//  CancionesView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 28/03/25.
//
import SwiftUI

struct CancionesView: View {
    let iconos = [
        ("zapoteco", AnyView(Canciones1View())),
        ("mixteco", AnyView(Canciones2View())),
        ("tzotzil", AnyView(Canciones3View())),
        ("nahuatl", AnyView(Canciones4View())),
        ("maya", AnyView(Canciones5View()))
    ]

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                Color("perla").edgesIgnoringSafeArea(.all)

                VStack {
                    Text("Canciones")
                        .font(.custom("Rosella-Deco", size: 36))
                        .foregroundColor(Color("dorado"))
                        .padding(.top, 20)

                    Spacer().frame(height: 40)

                    VStack(spacing: 30) {
                        HStack(spacing: 30) {
                            ForEach(iconos.prefix(2), id: \.0) { icono, destino in
                                NavigationLink(destination: destino.navigationBarBackButtonHidden(true)) {
                                    Image(icono)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 160, height: 160)
                                }
                            }
                        }
                        HStack(spacing: 20) {
                            ForEach(iconos.dropFirst(2).prefix(2), id: \.0) { icono, destino in
                                NavigationLink(destination: destino.navigationBarBackButtonHidden(true)) {
                                    Image(icono)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 170, height: 170)
                                }
                            }
                        }
                        NavigationLink(destination: iconos[4].1.navigationBarBackButtonHidden(true)) {
                            Image(iconos[4].0)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 170, height: 170)
                        }
                    }

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
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    CancionesView()
}
