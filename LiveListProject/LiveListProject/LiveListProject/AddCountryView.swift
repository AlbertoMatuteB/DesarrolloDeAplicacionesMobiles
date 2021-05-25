//
//  AddCountryView.swift
//  LiveListProject
//
//  Created by Alberto Matute on 5/20/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @EnvironmentObject var countryController: CountryContoller
    
    @State var countryName: String = ""
    @State var population: String = ""
    var body: some View {
        VStack{
            
            Text("Please input a country and its population")
                .font(.title3)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.bottom, 100)
            HStack{
                Image(systemName: "pencil.circle")
                    .foregroundColor(.gray)
                TextField("Country", text: $countryName)
            }.padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 3.0))
            HStack{
                Image(systemName: "person.3")
                    .foregroundColor(.gray)
                TextField("Population", text: $population)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 3.0))
            HStack{
                Button(action: {countryController.addCountry(newCountry: CountryModel(id: UUID(), name: countryName, population: population))
                    
                }) {
                    Text("Add")
                }.padding().padding(.horizontal).foregroundColor(.white).background(Color.blue).cornerRadius(7.0)
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Cancel")
                }.padding().padding(.horizontal).foregroundColor(.white).background(Color.blue).cornerRadius(7.0)
            }
            .padding(.top, 30)
        }
        .padding(.horizontal, 20)
        .navigationBarTitle("Add Country", displayMode: .inline)
        
    }
}

struct AddCountryView_Previews: PreviewProvider {
    
    static var previews: some View {
        AddCountryView()
    }
}
