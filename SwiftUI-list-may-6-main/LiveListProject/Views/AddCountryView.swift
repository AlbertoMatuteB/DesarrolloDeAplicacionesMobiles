//
//  AddCountryView.swift
//  LiveListProject
//
//  Created by RODRIGO MATUTE BELTRAN on 13/05/21.
//

import SwiftUI

var cityName: Text

struct AddCountryView: View {
    var body: some View {
        VStack{
            
            TextField("Add City Name", text: cityName)
        }
    }
}

struct AddCountryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCountryView()
    }
}
