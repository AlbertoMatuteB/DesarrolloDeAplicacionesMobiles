//
//  AddCountryView.swift
//  LiveListProject
//
//  Created by Alberto Matute on 5/13/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @State var cityName: String
    
    var body: some View {
        VStack{
            
            TextField("City Name", text: $cityName)
            Text(cityName)
            
        }
        .padding(.horizontal, 20)
        .navigationBarTitle("Add Country", displayMode: .inline)
        
    }
}

struct AddCountryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCountryView(cityName: "Country")
    }
}
