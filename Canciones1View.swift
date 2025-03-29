//
//  Canciones1View.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 29/03/25.
//
import SwiftUI
import SafariServices

extension URL: Identifiable {
    public var id: Self { self }
}

struct Canciones1View: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedURL: URL?

    let cancion1URL = URL(string: "https://www.youtube.com/watch?v=zGYVIHNBaBY")!
    let cancion2URL = URL(string: "https://www.youtube.com/watch?v=yXi6JOB_8gM")!

    var body: some View {
        ZStack {
            Color("perla").edgesIgnoringSafeArea(.all)

            VStack {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color("arena")) // Flecha en tono arena
                            Text("Back")
                                .foregroundColor(Color("arena")) // Texto en tono arena
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(Color("perla").opacity(0.2)) // Fondo con ligera opacidad
                        .cornerRadius(8)
                    }
                    Spacer()
                }
                .padding()

                Text("Canciones")
                    .font(.custom("Rosella-Deco", size: 36))
                    .foregroundColor(Color("dorado"))
                    .multilineTextAlignment(.center)
                    .padding(.top, -20)

                Spacer().frame(height: 40)

                VStack(spacing: 20) {
                    Text("Nanga ti feo")
                        .foregroundColor(Color("arena"))
                        .font(.title)

                    Button(action: {
                        selectedURL = cancion1URL
                    }) {
                        Image("cancion1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }

                    Text("Son bigu")
                        .foregroundColor(Color("arena"))
                        .font(.title)

                    Button(action: {
                        selectedURL = cancion2URL
                    }) {
                        Image("cancion2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                }

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
        .sheet(item: $selectedURL) { url in
            SafariView(url: url)
                .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        let safariVC = SFSafariViewController(url: url)
        safariVC.modalPresentationStyle = .fullScreen
        return safariVC
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}

#Preview {
    Canciones1View()
}
