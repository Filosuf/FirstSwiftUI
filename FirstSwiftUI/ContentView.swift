//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by Filosuf on 07.03.2023.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            Text("Title")
                .padding()
                .font(Font.largeTitle.weight(.bold))
                .foregroundColor(.red)
            Text("Primary text")
                .padding()
        }
    }
}
struct ProfileView: View {
    @State private var login: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack() {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100.0, height: 100.0, alignment: .center)
//                .clipped()

            Spacer()
                .frame(height: 70)

            VStack(alignment: .center, spacing: 0) {
                TextField("Email or phone", text: $login)
                    .padding()
                Divider()
                    .frame(height: 2)
                    .overlay(.gray)
                TextField("Password", text: $password)
                    .padding()
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 2)
                    .background(Color(UIColor.lightGray).cornerRadius(10))
            )
            .padding()

            VStack() {
                Button(action: {
                    print("Simple Button")
                }, label: {
                    Text("Log in")
                        .padding()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                })
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 0)
                            .background(Color(UIColor.blue).cornerRadius(10))
                    )

            }
            .padding()
        }

    }
}

struct SecondView: View {
    var body: some View {
        Color.blue
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                FirstView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Feed")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                SecondView()
                    .tabItem {
                        Image(systemName: "music.note")
                        Text("Player")
                    }
                SecondView()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Video")
                    }
                SecondView()
                    .tabItem {
                        Image(systemName: "mic.fill")
                        Text("Recorder")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
