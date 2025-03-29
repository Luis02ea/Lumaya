//
//  MapaView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 28/03/25.
//
import SwiftUI
import MapKit

// Estructura para almacenar datos de cada estado
struct MexicanState: Identifiable {
    let id = UUID()
    let name: String
    let coordinates: CLLocationCoordinate2D
    let capitalCity: String
    let population: Int
    let flagColor: Color
    let facts: [String]
}

// Vista principal del mapa
struct MapaView: View {
    // Región inicial centrada en México
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 23.6345, longitude: -102.5528),
        span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20)
    )

    // Agregamos la ubicación de los puntos y las tarjetas con la información
    let mexicanStates = [
        MexicanState(
            name: "Zapoteca",
            coordinates: CLLocationCoordinate2D(latitude: 17.05922, longitude: -99.1332),
            capitalCity: "Oaxaca",
            population: 9_209_944,
            flagColor: .red,
            facts: [
                "El zapoteco pertenece a la familia otomangue y es una de las lenguas indígenas más antiguas de México. Se habla principalmente en Oaxaca, Veracruz y Guerrero, con alrededor de 400,000 hablantes."
            ]
        ),
        MexicanState(
            name: "Náhuatl",
            coordinates: CLLocationCoordinate2D(latitude: 18.72759, longitude: -97.98075),
            capitalCity: "Guadalajara",
            population: 8_348_151,
            flagColor: .blue,
            facts: [
                "El náhuatl es una lengua de la familia uto-azteca y fue la lengua del Imperio Mexica (azteca). Se habla en varios estados, incluyendo Puebla, Veracruz, Hidalgo, San Luis Potosí, Guerrero, Morelos, Estado de México y Ciudad de México, con más de 1.5 millones de hablantes."
            ]
        ),
        MexicanState(
            name: "Mixteco",
            coordinates: CLLocationCoordinate2D(latitude: 17.52231, longitude: -99.500391),
            capitalCity: "Guerrero",
            population: 5_503_616,
            flagColor: .green,
            facts: [
                "El mixteco es parte de la familia otomangue y se habla principalmente en Oaxaca, Guerrero y Puebla, con cerca de 500,000 hablantes."
            ]
        ),
        MexicanState(
            name: "Maya",
            coordinates: CLLocationCoordinate2D(latitude: 20.9673, longitude: -89.5925),
            capitalCity: "Mérida",
            population: 800,
            flagColor: .orange,
            facts: [
                "El maya yucateco es una lengua de la familia maya, hablada en los estados de Yucatán, Campeche, Quintana Roo y algunas partes de Tabasco y Chiapas, con más de 800,000 hablantes."
            ]
        ),
        MexicanState(
            name: "Tzotzil",
            coordinates: CLLocationCoordinate2D(latitude: 16.73594, longitude: -92.63815),
            capitalCity: "Chiapas",
            population: 8_062_579,
            flagColor: .cyan,
            facts: [
                "El tzotzil es una lengua maya, hablada por más de 500,000 personas en Chiapas, especialmente en San Cristóbal de las Casas, Chamula, Zinacantán y Chenalhó."
            ]
        )
    ]

    @State private var selectedState: MexicanState?
    @State private var showingDetail = false

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                Color("perla").edgesIgnoringSafeArea(.all) // Fondo perla

                VStack {
                    Text("Mapa")
                        .font(.custom("Rosella-Deco", size: 36))
                        .foregroundColor(Color("dorado"))
                        .padding(.top, 20)
                    Text("Interactivo")
                        .font(.custom("Rosella-Deco", size: 36))
                        .foregroundColor(Color("dorado"))
                    Text("de México")
                        .font(.custom("Rosella-Deco", size: 36))
                        .foregroundColor(Color("dorado"))

                    Text("Toca un estado para ver más información")
                        .italic()
                        .foregroundColor(.secondary)
                        .padding()

                    Map(coordinateRegion: $region, annotationItems: mexicanStates) { state in
                        MapAnnotation(coordinate: state.coordinates) {
                            VStack {
                                Text(state.name)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .padding(5)
                                    .background(Color.white.opacity(0.8))
                                    .cornerRadius(5)

                                Circle()
                                    .fill(state.flagColor)
                                    .frame(width: 20, height: 20)
                                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                    .shadow(radius: 3)
                            }
                            .onTapGesture {
                                selectedState = state
                                showingDetail = true
                            }
                        }
                    }
                    .frame(width: 350, height: 400)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding()

                    Spacer()
                }

                VStack {
                    Spacer()
                    HStack(spacing: 60) {
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
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true) // Oculta la barra de navegación
            .sheet(isPresented: $showingDetail) {
                if let state = selectedState {
                    StateDetailView(state: state)
                }
            }
        }
    }
}

struct StateDetailView: View {
    let state: MexicanState
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color("perla").edgesIgnoringSafeArea(.all) // Fondo perla

            NavigationView {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Circle()
                                .fill(state.flagColor)
                                .frame(width: 30, height: 30)

                            Text(state.name)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                        .padding(.bottom, 10)

                        Group {
                            InfoRow(title: "Capital", value: state.capitalCity)
                            InfoRow(title: "Población", value: "\(state.population.formatted())")
                        }
                        .padding(.vertical, 5)

                        Text("Datos interesantes")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top, 10)

                        ForEach(state.facts, id: \.self) { fact in
                            HStack(alignment: .top) {
                                Text("•")
                                    .foregroundColor(state.flagColor)
                                    .font(.title3)
                                Text(fact)
                            }
                            .padding(.vertical, 2)
                        }

                        Spacer()
                    }
                    .padding()
                }
                .navigationBarTitle("Detalles del Estado", displayMode: .inline)
                .navigationBarItems(trailing: Button("Cerrar") {
                    presentationMode.wrappedValue.dismiss()
                })
            }
        }
    }
}

struct InfoRow: View {
    let title: String
    let value: String

    var body: some View {
        HStack(alignment: .top) {
            Text(title + ":")
                .fontWeight(.semibold)
                .frame(width: 100, alignment: .leading)

            Text(value)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct Maps_Previews: PreviewProvider {
    static var previews: some View {
        MapaView()
    }
}
