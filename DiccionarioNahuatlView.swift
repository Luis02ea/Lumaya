//
//  DiccionarioNahuatlView.swift
//  Conectando con el Corazon
//
//  Created by Alumno on 29/03/25.
//

import SwiftUI

struct DiccionarioNahuatlView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color("perla").edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Text("Náhuatl")
                    .font(.custom("Rosella-Deco", size: 36))
                    .foregroundColor(Color("dorado"))
                    .padding(.top, 20)

                List {
                    ForEach(palabrasNahuatl, id: \.self) { palabra in
                        VStack(alignment: .leading) {
                            Text(palabra.palabraNahuatl)
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

struct PalabraNahuatl: Hashable {
    let palabraNahuatl: String
    let traduccion: String
}

let palabrasNahuatl: [PalabraNahuatl] = [
    PalabraNahuatl(palabraNahuatl: "Atl (Agua)", traduccion: "Líquido esencial para la vida."),
    PalabraNahuatl(palabraNahuatl: "Tlakatl (Gente)", traduccion: "Personas que pertenecen a una comunidad."),
    PalabraNahuatl(palabraNahuatl: "Tlalli (Tierra)", traduccion: "Suelo en el que vivimos."),
    PalabraNahuatl(palabraNahuatl: "Tonatiuh (Sol)", traduccion: "Estrella central del sistema solar."),
    PalabraNahuatl(palabraNahuatl: "Metztli (Luna)", traduccion: "Satélite natural de la Tierra."),
    PalabraNahuatl(palabraNahuatl: "Tletl (Fuego)", traduccion: "Elemento natural que produce luz y calor."),
    PalabraNahuatl(palabraNahuatl: "Ehecatl (Viento)", traduccion: "Movimiento del aire."),
    PalabraNahuatl(palabraNahuatl: "Cuahuitl (Árbol)", traduccion: "Planta con tronco y ramas."),
    PalabraNahuatl(palabraNahuatl: "Calli (Casa)", traduccion: "Lugar donde se vive."),
    PalabraNahuatl(palabraNahuatl: "Ilhuicatl (Cielo)", traduccion: "Espacio que rodea la Tierra."),
    PalabraNahuatl(palabraNahuatl: "Milpan (Milpa)", traduccion: "Campo de cultivo de maíz."),
    PalabraNahuatl(palabraNahuatl: "Xihuitl (Hierba)", traduccion: "Planta pequeña que crece en el suelo."),
    PalabraNahuatl(palabraNahuatl: "Yolcatl (Animal)", traduccion: "Ser vivo que camina o se mueve."),
    PalabraNahuatl(palabraNahuatl: "Ocuahuitl (Bosque)", traduccion: "Lugar con muchos árboles."),
    PalabraNahuatl(palabraNahuatl: "Tzontli (Cabeza)", traduccion: "Parte superior del cuerpo."),
    PalabraNahuatl(palabraNahuatl: "Ixtli (Ojo)", traduccion: "Órgano de la visión."),
    PalabraNahuatl(palabraNahuatl: "Camactli (Boca)", traduccion: "Abertura del rostro por donde se come."),
    PalabraNahuatl(palabraNahuatl: "Maitl (Mano)", traduccion: "Extremidad del cuerpo con dedos."),
    PalabraNahuatl(palabraNahuatl: "Icxitl (Pie)", traduccion: "Extremidad del cuerpo para caminar."),
    PalabraNahuatl(palabraNahuatl: "Cualli (Hermoso)", traduccion: "Que tiene gran belleza."),
    PalabraNahuatl(palabraNahuatl: "Xoxouhqui (Verde)", traduccion: "Color de las hojas de las plantas."),
    PalabraNahuatl(palabraNahuatl: "Chichiltic (Rojo)", traduccion: "Color básico de la luz."),
    PalabraNahuatl(palabraNahuatl: "Tliltic (Negro)", traduccion: "Color oscuro como la noche."),
    PalabraNahuatl(palabraNahuatl: "Iztac (Blanco)", traduccion: "Color claro como la nieve."),
    PalabraNahuatl(palabraNahuatl: "Costic (Amarillo)", traduccion: "Color del sol."),
    PalabraNahuatl(palabraNahuatl: "Camactic (Boca)", traduccion: "Abertura del rostro por donde se come."),
    PalabraNahuatl(palabraNahuatl: "Tepitzin (Pequeño)", traduccion: "De poco tamaño."),
    PalabraNahuatl(palabraNahuatl: "Hueyi (Grande)", traduccion: "De mucho tamaño.")
]

#Preview {
    DiccionarioNahuatlView()
}
