//
//  DiccionarioZapotecaView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 29/03/25.
//

import SwiftUI

struct DiccionarioZapotecaView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color("perla").edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) { // Ajustamos el espacio entre el título y la lista
                Text("Zapoteca")
                    .font(.custom("Rosella-Deco", size: 36))
                    .foregroundColor(Color("dorado"))
                    .padding(.top, 20) // Agregamos un poco de espacio en la parte superior

                List {
                    ForEach(palabrasZapotecas, id: \.self) { palabra in
                        VStack(alignment: .leading) {
                            Text(palabra.palabraZapoteca)
                                .font(.system(size: 17, weight: .semibold)) // Palabras en negrita
                                .foregroundColor(Color("arena"))
                            Divider().background(Color("arena")) // Línea divisoria color arena
                            Text(palabra.traduccion)
                                .foregroundColor(Color("arena"))
                        }
                        .padding(.vertical, 8) // Ajustamos el padding vertical para mejor espaciado
                    }
                }
                .padding(.horizontal) // Agregamos padding horizontal a la lista
                .listStyle(PlainListStyle()) // Usamos PlainListStyle para eliminar el estilo de lista predeterminado
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("arena"))
                        Text("Atrás")
                            .foregroundColor(Color("arena"))
                    }
                }
            )
        }
    }
}

struct PalabraZapoteca: Hashable {
    let palabraZapoteca: String
    let traduccion: String
}

let palabrasZapotecas: [PalabraZapoteca] = [
    PalabraZapoteca(palabraZapoteca: "Béé (Agua)", traduccion: "Líquido esencial para la vida."),
    PalabraZapoteca(palabraZapoteca: "Binni (Gente)", traduccion: "Personas que pertenecen a una comunidad."),
    PalabraZapoteca(palabraZapoteca: "Casi (Fruto)", traduccion: "Lo que da una planta."),
    PalabraZapoteca(palabraZapoteca: "Chii (Maíz)", traduccion: "Producto alimenticio básico."),
    PalabraZapoteca(palabraZapoteca: "Díí (Sol)", traduccion: "Estrella central del sistema solar."),
    PalabraZapoteca(palabraZapoteca: "Gúubi (Casa)", traduccion: "Lugar donde se vive."),
    PalabraZapoteca(palabraZapoteca: "Ikoo (Animal)", traduccion: "Ser vivo que camina o se mueve."),
    PalabraZapoteca(palabraZapoteca: "Jñaa (Montaña)", traduccion: "Elevación natural del terreno."),
    PalabraZapoteca(palabraZapoteca: "Kíí (Amigo)", traduccion: "Persona cercana y de confianza."),
    PalabraZapoteca(palabraZapoteca: "Laa (Luna)", traduccion: "Satélite natural de la Tierra."),
    PalabraZapoteca(palabraZapoteca: "Mbiya (Cielo)", traduccion: "Espacio que rodea la Tierra."),
    PalabraZapoteca(palabraZapoteca: "Nda’á (Fuego)", traduccion: "Elemento natural que produce luz y calor."),
    PalabraZapoteca(palabraZapoteca: "Ñu (Tierra)", traduccion: "Suelo en el que vivimos."),
    PalabraZapoteca(palabraZapoteca: "Oos (Viento)", traduccion: "Movimiento del aire."),
    PalabraZapoteca(palabraZapoteca: "Pue (Agua)", traduccion: "Líquido vital."),
    PalabraZapoteca(palabraZapoteca: "Quisa (Tierra)", traduccion: "Elemento que cubre el planeta."),
    PalabraZapoteca(palabraZapoteca: "Rii (Palabra)", traduccion: "Sonido con significado."),
    PalabraZapoteca(palabraZapoteca: "Sàa (Rojo)", traduccion: "Color básico de la luz."),
    PalabraZapoteca(palabraZapoteca: "Tii (Madre)", traduccion: "Persona que da a luz a un hijo."),
    PalabraZapoteca(palabraZapoteca: "Tza’ (Hijo)", traduccion: "Persona que es descendiente de los padres."),
    PalabraZapoteca(palabraZapoteca: "Uu (Bajo)", traduccion: "Dirección hacia el suelo."),
    PalabraZapoteca(palabraZapoteca: "Vee (Cerca)", traduccion: "A poca distancia."),
    PalabraZapoteca(palabraZapoteca: "Wíí (Dios)", traduccion: "Ser supremo o divinidad."),
    PalabraZapoteca(palabraZapoteca: "Xhi (Gente)", traduccion: "Personas que habitan un lugar."),
    PalabraZapoteca(palabraZapoteca: "Yuu (Feliz)", traduccion: "Estado de bienestar emocional."),
    PalabraZapoteca(palabraZapoteca: "Zii (Viejo)", traduccion: "Persona de avanzada edad."),
    PalabraZapoteca(palabraZapoteca: "Zúú (Rápido)", traduccion: "Algo que se mueve con velocidad."),
    PalabraZapoteca(palabraZapoteca: "Zóó (Lejos)", traduccion: "Gran distancia."),
    PalabraZapoteca(palabraZapoteca: "Zíí (Lluvia)", traduccion: "Precipitación de agua desde las nubes.")
]

#Preview {
    DiccionarioZapotecaView()
}
