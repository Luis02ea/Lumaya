//
//  DiccionarioView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 28/03/25.
//
import SwiftUI

struct DiccionarioView: View {
    @State private var showingLanguages = false
    @State private var selectedLanguage: String? = nil

    var body: some View {
        NavigationView {
            ZStack {
                Color("perla").edgesIgnoringSafeArea(.all)

                VStack {
                    Text("DICCIONARIO")
                        .font(.custom("Rosella-Deco", size: 36))
                        .foregroundColor(Color("dorado"))
                        .padding(.top, 50)

                    Text("¡VAMOS A APRENDER!")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(Color("arena"))
                        .padding(.top, 10)

                    Spacer().frame(height: 60)

                    Button(action: {
                        showingLanguages.toggle()
                    }) {
                        HStack {
                            Text("Selecciona una lengua")
                                .foregroundColor(.gray)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Image(systemName: "chevron.down")
                                .foregroundColor(.gray)
                        }
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 70)
                    }

                    Image("pirámide")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(.top, 40)

                    Text("Las lenguas indígenas mexicanas son una parte importante de nuestra cultura. Con este diccionario queremos ayudarte a descubrir y aprender más sobre ellas, para que sigan vivas y se sigan hablando. Cada palabra que encuentres aquí es una forma de conectar con nuestras raíces y con las comunidades que las mantienen vivas. Explora, aprende y celebra la riqueza de nuestras lenguas.")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color("arena"))
                        .padding(.horizontal, 50)
                        .padding(.top, 10)

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

                if showingLanguages {
                    LanguageSelectionView(showingLanguages: $showingLanguages, selectedLanguage: $selectedLanguage)
                }

                NavigationLink(
                    destination: getDestination(for: "Zapoteca"),
                    tag: "Zapoteca",
                    selection: $selectedLanguage
                ) { EmptyView() }

                NavigationLink(
                    destination: getDestination(for: "Maya"),
                    tag: "Maya",
                    selection: $selectedLanguage
                ) { EmptyView() }

                NavigationLink(
                    destination: getDestination(for: "Náhuatl"),
                    tag: "Náhuatl",
                    selection: $selectedLanguage
                ) { EmptyView() }

                NavigationLink(
                    destination: getDestination(for: "Tzotzil"),
                    tag: "Tzotzil",
                    selection: $selectedLanguage
                ) { EmptyView() }

                NavigationLink(
                    destination: getDestination(for: "Mixteco"),
                    tag: "Mixteco",
                    selection: $selectedLanguage
                ) { EmptyView() }
            }
            .navigationBarBackButtonHidden(true) // Ocultar el botón de retroceso aquí
        }
    }

    private func getDestination(for language: String) -> some View {
        switch language {
        case "Zapoteca":
            return AnyView(DiccionarioZapotecaView())
        case "Maya":
            return AnyView(DiccionarioMayaView())
        case "Náhuatl":
            return AnyView(DiccionarioNahuatlView())
        case "Tzotzil":
            return AnyView(DiccionarioTzotzilView())
        case "Mixteco":
            return AnyView(DiccionarioMixtecoView())
        default:
            return AnyView(EmptyView())
        }
    }
}

struct LanguageSelectionView: View {
    @Binding var showingLanguages: Bool
    @Binding var selectedLanguage: String?

    var body: some View {
        VStack {
            VStack {
                Button("Zapoteca") {
                    selectedLanguage = "Zapoteca"
                    showingLanguages = false
                }
                .foregroundColor(Color("dorado"))
                .padding(.horizontal, 20)
                .padding(.vertical, 8)

                Button("Maya") {
                    selectedLanguage = "Maya"
                    showingLanguages = false
                }
                .foregroundColor(Color("dorado"))
                .padding(.horizontal, 20)
                .padding(.vertical, 8)

                Button("Náhuatl") {
                    selectedLanguage = "Náhuatl"
                    showingLanguages = false
                }
                .foregroundColor(Color("dorado"))
                .padding(.horizontal, 20)
                .padding(.vertical, 8)

                Button("Tzotzil") {
                    selectedLanguage = "Tzotzil"
                    showingLanguages = false
                }
                .foregroundColor(Color("dorado"))
                .padding(.horizontal, 20)
                .padding(.vertical, 8)

                Button("Mixteco") {
                    selectedLanguage = "Mixteco"
                    showingLanguages = false
                }
                .foregroundColor(Color("dorado"))
                .padding(.horizontal, 20)
                .padding(.vertical, 8)
            }
            .padding(.bottom, 10)

            Button("Cerrar") {
                showingLanguages = false
            }
            .foregroundColor(Color("dorado"))
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .padding()
        .frame(width: 250)
        .background(Color.white.opacity(0.9))
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

#Preview {
    DiccionarioView()
}
