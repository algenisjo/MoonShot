//
//  AstronautView.swift
//  MoonShot
//
//  Created by Algenis Joaquin Ortiz on 7/11/22.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    var body: some View {
        ScrollView{
            VStack{
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
               
                Text(astronaut.description)
                    .padding()
            }.padding(.horizontal)
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronaut: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static var previews: some View {
        AstronautView(astronaut: astronauts["young"]!)
            .preferredColorScheme(.dark)
    }
}
