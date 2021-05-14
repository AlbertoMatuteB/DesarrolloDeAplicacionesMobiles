//
//  ContentView.swift
//  StateManagementExample
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Int  = 0
    
    var body: some View {
        
        NavigationView {
            VStack {
                Button(action: {
                    counter = counter + 1
                }, label: {
                    Text("increase")
                })
                
                Text(String(counter))
           
            
                NavigationLink(
                    destination: Second_StateScreen(counter: $counter),
                    label: {
                        Text("Navigate to Second Screen")
                    })
            }//VStack
            .navigationBarTitle("First Screen")
        } // NvigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    
    @State static var counter : Int = 1
    
    static var previews: some View {
        ContentView(counter: counter)
    }
}
