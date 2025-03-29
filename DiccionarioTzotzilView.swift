//
//  DiccionarioTzotzilView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 29/03/25.
//

import SwiftUI

struct DiccionarioTzotzilView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color("perla").edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Text("Tzotzil")
                    .font(.custom("Rosella-Deco", size: 36))
                    .foregroundColor(Color("dorado"))
                    .padding(.top, 20)

                List {
                    ForEach(palabrasTzotzil, id: \.self) { palabra in
                        VStack(alignment: .leading) {
                            Text(palabra.palabraTzotzil)
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

struct PalabraTzotzil: Hashable {
    let palabraTzotzil: String
    let traduccion: String
}

let palabrasTzotzil: [PalabraTzotzil] = [
    PalabraTzotzil(palabraTzotzil: "Vo' (Agua)", traduccion: "Líquido esencial para la vida."),
    PalabraTzotzil(palabraTzotzil: "Vinik (Gente)", traduccion: "Personas que pertenecen a una comunidad."),
    PalabraTzotzil(palabraTzotzil: "Balumil (Tierra)", traduccion: "Suelo en el que vivimos."),
    PalabraTzotzil(palabraTzotzil: "K'ak'al (Sol)", traduccion: "Estrella central del sistema solar."),
    PalabraTzotzil(palabraTzotzil: "U (Luna)", traduccion: "Satélite natural de la Tierra."),
    PalabraTzotzil(palabraTzotzil: "K'ok' (Fuego)", traduccion: "Elemento natural que produce luz y calor."),
    PalabraTzotzil(palabraTzotzil: "Ik' (Viento)", traduccion: "Movimiento del aire."),
    PalabraTzotzil(palabraTzotzil: "Te' (Árbol)", traduccion: "Planta con tronco y ramas."),
    PalabraTzotzil(palabraTzotzil: "Na (Casa)", traduccion: "Lugar donde se vive."),
    PalabraTzotzil(palabraTzotzil: "Chan (Cielo)", traduccion: "Espacio que rodea la Tierra."),
    PalabraTzotzil(palabraTzotzil: "Milpa (Milpa)", traduccion: "Campo de cultivo de maíz."),
    PalabraTzotzil(palabraTzotzil: "Jobel (Hierba)", traduccion: "Planta pequeña que crece en el suelo."),
    PalabraTzotzil(palabraTzotzil: "Chon (Animal)", traduccion: "Ser vivo que camina o se mueve."),
    PalabraTzotzil(palabraTzotzil: "Te'tik (Bosque)", traduccion: "Lugar con muchos árboles."),
    PalabraTzotzil(palabraTzotzil: "Jol (Cabeza)", traduccion: "Parte superior del cuerpo."),
    PalabraTzotzil(palabraTzotzil: "Satil (Ojo)", traduccion: "Órgano de la visión."),
    PalabraTzotzil(palabraTzotzil: "Chi' (Boca)", traduccion: "Abertura del rostro por donde se come."),
    PalabraTzotzil(palabraTzotzil: "K'ab (Mano)", traduccion: "Extremidad del cuerpo con dedos."),
    PalabraTzotzil(palabraTzotzil: "Yok (Pie)", traduccion: "Extremidad del cuerpo para caminar."),
    PalabraTzotzil(palabraTzotzil: "Lek (Hermoso)", traduccion: "Que tiene gran belleza."),
    PalabraTzotzil(palabraTzotzil: "Yax (Verde)", traduccion: "Color de las hojas de las plantas."),
    PalabraTzotzil(palabraTzotzil: "Chak (Rojo)", traduccion: "Color básico de la luz."),
    PalabraTzotzil(palabraTzotzil: "Ik' (Negro)", traduccion: "Color oscuro como la noche."),
    PalabraTzotzil(palabraTzotzil: "Sak (Blanco)", traduccion: "Color claro como la nieve."),
    PalabraTzotzil(palabraTzotzil: "K'an (Amarillo)", traduccion: "Color del sol."),
    PalabraTzotzil(palabraTzotzil: "Bech' (Boca)", traduccion: "Abertura del rostro por donde se come."),
    PalabraTzotzil(palabraTzotzil: "Nich'on (Pequeño)", traduccion: "De poco tamaño."),
    PalabraTzotzil(palabraTzotzil: "Muk' (Grande)", traduccion: "De mucho tamaño.")
]

#Preview {
    DiccionarioTzotzilView()
}
