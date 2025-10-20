//
//  ContentView.swift
//  Midterm_Alejandro_Avina
//
//  Created by Alejandro Avina on 10/18/25.
//
// Midterm
// Name: Alejandro Avina Date: 10/18/2025

import SwiftUI


let details = Bundle.main.decode([Subject].self,from:"Data.json")

struct DetailView: View {
    var body: some View {
        
    }
}




struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(details){
                    section in
                    NavigationLink(destination:{
                        VStack{
                            Text(section.name)
                            Image(section.imageName)
                            .resizable()
                            .frame(height:400)
                            Text(section.description).padding()
                        }
                    }
                    ){
                        HStack{
                            Image(section.imageName).resizable().frame(width:50,height:50)
                            Text(section.name)
                        }
                    }
                }.navigationTitle("Alejandro's tool reference")
            }
        }
    }
}

#Preview {
    ContentView()
}
