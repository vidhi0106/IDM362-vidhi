//
//  ContentView.swift
//  IDM362-vidhi
//
//  Created by Vidhi Shah  on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    // State variable to manage background color
    @State private var backgroundColor: Color = .white
    
    var body: some View {
        ZStack { // Use ZStack to overlay the content on the background
            backgroundColor
                .ignoresSafeArea() // Make the background cover the entire screen
            Image("self")
                .aspectRatio(contentMode: .fit)
                .padding(.all, 50.0)
                .opacity(0.3)
        
                
                
            
            VStack(alignment: .center, spacing: 10) {
                Text("Hi, my name is Vidhi!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                
                Image("self")
                    .renderingMode(.original)
                    .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .aspectRatio(contentMode: .fit)
                    .padding(.all, 0.0)
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                Button(action: {
                    // Change background color when button is pressed
                    changeBackgroundColor()
                }) {
                    Text("Change Background")
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 14)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }

    // Function to change the background color
    func changeBackgroundColor() {
        // Toggle between white and light blue
        backgroundColor = (backgroundColor == .white) ? .lime : .white
    }
}

extension Color {
    static let lime = Color(red: 173/255, green: 216/255, blue: 230/255) // Define light blue color
}


#Preview {
    ContentView()
}
