//
//  ContentView.swift
//  Homework 1
//
//  Created by Claire on 1/15/23.
//

import SwiftUI

struct ContentView: View {
    @State var object=try! Sphere(radius: 1.0)
    var body: some View {
        VStack(alignment: .center) {
            
            HStack(alignment: .center) {
                Text("Radius:")
                TextField("Enter radius", value: $object.radius, format: .number)
                Button("Add 10", action: add10)
            }
           
            Text("Volume of Sphere: \(object.spherevolume())")
            Text("Volume of Bounding Box: \(object.boxvolume())")
            Text("Surface Area of Sphere: \(object.spheresurf())")
            Text("Surface Area of Bounding Box: \(object.boxsurf())")
        }
        .padding()
    }
    func add10()->Void {
        object.radius = object.radius+10
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
