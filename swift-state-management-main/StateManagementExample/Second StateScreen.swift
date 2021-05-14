//
//  Second StateScreen.swift
//  StateManagementExample
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI

struct Second_StateScreen: View {
    
    @Binding var counter: Int
    
    var body: some View {
        VStack {
            Button(action: {
                counter -= 1
            }, label: {
                Text("Decrease")
            })
            
            Text(String(counter))
        }
        .navigationBarTitle("Second Screen")
    }
}

struct Second_StateScreen_Previews: PreviewProvider {
    
    static var previews: some View {
        Second_StateScreen(counter: .constant(0))
    }
}
