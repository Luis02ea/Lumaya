//
//  DiccionarioMixtecoView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 29/03/25.
//

import SwiftUI

struct DiccionarioMixtecoView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color("perla").edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Text("Mixteco")
                    .font(.custom("Rosella-Deco", size: 36))
                    .foregroundColor(Color("dorado"))
                    .padding(.top, 20)

                List {
                    ForEach(palabrasMixtecas, id: \.self) { palabra in
                        VStack(alignment: .leading) {
                            Text(palabra.palabraMixteca)
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

struct PalabraMixteca: Hashable {
    let palabraMixteca: String
    let traduccion: String
}

let palabrasMixtecas: [PalabraMixteca] = [
    PalabraMixteca(palabraMixteca: "Ñuu (Agua)", traduccion: "Líquido esencial para la vida."),
    PalabraMixteca(palabraMixteca: "Ñani (Gente)", traduccion: "Personas que pertenecen a una comunidad."),
    PalabraMixteca(palabraMixteca: "Yuku (Tierra)", traduccion: "Suelo en el que vivimos."),
    PalabraMixteca(palabraMixteca: "Nde'e (Sol)", traduccion: "Estrella central del sistema solar."),
    PalabraMixteca(palabraMixteca: "Ñu'un (Luna)", traduccion: "Satélite natural de la Tierra."),
    PalabraMixteca(palabraMixteca: "Ña'a (Fuego)", traduccion: "Elemento natural que produce luz y calor."),
    PalabraMixteca(palabraMixteca: "Ñuun (Viento)", traduccion: "Movimiento del aire."),
    PalabraMixteca(palabraMixteca: "Tiñu (Árbol)", traduccion: "Planta con tronco y ramas."),
    PalabraMixteca(palabraMixteca: "Ñuu (Casa)", traduccion: "Lugar donde se vive."),
    PalabraMixteca(palabraMixteca: "Ñu'un (Cielo)", traduccion: "Espacio que rodea la Tierra."),
    PalabraMixteca(palabraMixteca: "Ñuu (Milpa)", traduccion: "Campo de cultivo de maíz."),
    PalabraMixteca(palabraMixteca: "Ñuu (Hierba)", traduccion: "Planta pequeña que crece en el suelo."),
    PalabraMixteca(palabraMixteca: "Ñuu (Animal)", traduccion: "Ser vivo que camina o se mueve."),
    PalabraMixteca(palabraMixteca: "Ñuu (Bosque)", traduccion: "Lugar con muchos árboles."),
    PalabraMixteca(palabraMixteca: "Ñuu (Cabeza)", traduccion: "Parte superior del cuerpo."),
    PalabraMixteca(palabraMixteca: "Ñuu (Ojo)", traduccion: "Órgano de la visión."),
    PalabraMixteca(palabraMixteca: "Ñuu (Boca)", traduccion: "Abertura del rostro por donde se come."),
    PalabraMixteca(palabraMixteca: "Ñuu (Mano)", traduccion: "Extremidad del cuerpo con dedos."),
    PalabraMixteca(palabraMixteca: "Ñuu (Pie)", traduccion: "Extremidad del cuerpo para caminar."),
    PalabraMixteca(palabraMixteca: "Ñuu (Hermoso)", traduccion: "Que tiene gran belleza."),
    PalabraMixteca(palabraMixteca: "Ñuu (Verde)", traduccion: "Color de las hojas de las plantas."),
    PalabraMixteca(palabraMixteca: "Ñuu (Rojo)", traduccion: "Color básico de la luz."),
    PalabraMixteca(palabraMixteca: "Ñuu (Negro)", traduccion: "Color oscuro como la noche."),
    PalabraMixteca(palabraMixteca: "Ñuu (Blanco)", traduccion: "Color claro como la nieve."),
    PalabraMixteca(palabraMixteca: "Ñuu (Amarillo)", traduccion: "Color del sol."),
    PalabraMixteca(palabraMixteca: "Ñuu (Boca)", traduccion: "Abertura del rostro por donde se come."),
    PalabraMixteca(palabraMixteca: "Ñuu (Pequeño)", traduccion: "De poco tamaño."),
    PalabraMixteca(palabraMixteca: "Ñuu (Grande)", traduccion: "De mucho tamaño.")
]

#Preview {
    DiccionarioMixtecoView()
}
