//
//  DiccionarioMayaView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 29/03/25.
//
import SwiftUI

struct DiccionarioMayaView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color("perla").edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Text("Maya")
                    .font(.custom("Rosella-Deco", size: 36))
                    .foregroundColor(Color("dorado"))
                    .padding(.top, 20)

                List {
                    ForEach(palabrasMayas, id: \.self) { palabra in
                        VStack(alignment: .leading) {
                            Text(palabra.palabraMaya)
                                .font(.system(size: 17, weight: .semibold))
                                .foregroundColor(Color("arena"))
                            Divider().background(Color("arena"))
                            Text(palabra.traduccion)
                                .foregroundColor(Color("arena"))
                        }
                        .padding(.vertical, 8)
                    }
                }
                .padding(.horizontal)
                .listStyle(PlainListStyle())
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

struct PalabraMaya: Hashable {
    let palabraMaya: String
    let traduccion: String
}

let palabrasMayas: [PalabraMaya] = [
    PalabraMaya(palabraMaya: "Ja' (Agua)", traduccion: "Líquido esencial para la vida."),
    PalabraMaya(palabraMaya: "Winik (Gente)", traduccion: "Personas que pertenecen a una comunidad."),
    PalabraMaya(palabraMaya: "Lu'um (Tierra)", traduccion: "Suelo en el que vivimos."),
    PalabraMaya(palabraMaya: "K'iin (Sol)", traduccion: "Estrella central del sistema solar."),
    PalabraMaya(palabraMaya: "Uj (Luna)", traduccion: "Satélite natural de la Tierra."),
    PalabraMaya(palabraMaya: "K'áak' (Fuego)", traduccion: "Elemento natural que produce luz y calor."), // Corregido aquí
    PalabraMaya(palabraMaya: "Iik' (Viento)", traduccion: "Movimiento del aire."),
    PalabraMaya(palabraMaya: "Che' (Árbol)", traduccion: "Planta con tronco y ramas."),
    PalabraMaya(palabraMaya: "Naj (Casa)", traduccion: "Lugar donde se vive."),
    PalabraMaya(palabraMaya: "Chan (Cielo)", traduccion: "Espacio que rodea la Tierra."),
    PalabraMaya(palabraMaya: "Kool (Milpa)", traduccion: "Campo de cultivo de maíz."),
    PalabraMaya(palabraMaya: "Xíiw (Hierba)", traduccion: "Planta pequeña que crece en el suelo."),
    PalabraMaya(palabraMaya: "Ba'alche' (Animal)", traduccion: "Ser vivo que camina o se mueve."),
    PalabraMaya(palabraMaya: "K'áax (Selva)", traduccion: "Bosque tropical con mucha vegetación."),
    PalabraMaya(palabraMaya: "P'o'ok (Cabeza)", traduccion: "Parte superior del cuerpo."),
    PalabraMaya(palabraMaya: "Ich (Ojo)", traduccion: "Órgano de la visión."),
    PalabraMaya(palabraMaya: "Chi' (Boca)", traduccion: "Abertura del rostro por donde se come."),
    PalabraMaya(palabraMaya: "K'ab (Mano)", traduccion: "Extremidad del cuerpo con dedos."),
    PalabraMaya(palabraMaya: "Óok (Pie)", traduccion: "Extremidad del cuerpo para caminar."),
    PalabraMaya(palabraMaya: "Ki'ichkelem (Hermoso)", traduccion: "Que tiene gran belleza."),
    PalabraMaya(palabraMaya: "Ya'ax (Verde)", traduccion: "Color de las hojas de las plantas."),
    PalabraMaya(palabraMaya: "Chak (Rojo)", traduccion: "Color básico de la luz."),
    PalabraMaya(palabraMaya: "Ek' (Negro)", traduccion: "Color oscuro como la noche."),
    PalabraMaya(palabraMaya: "Sak (Blanco)", traduccion: "Color claro como la nieve."),
    PalabraMaya(palabraMaya: "K'an (Amarillo)", traduccion: "Color del sol."),
    PalabraMaya(palabraMaya: "Box (Negro)", traduccion: "Color muy oscuro."),
    PalabraMaya(palabraMaya: "Tz'íit (Pequeño)", traduccion: "De poco tamaño."),
    PalabraMaya(palabraMaya: "Nojoch (Grande)", traduccion: "De mucho tamaño.")
]

#Preview {
    DiccionarioMayaView()
}
