//
//  ContentView.swift
//  Shared
//
//  Created by Kaan Ozdemir on 19.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            
            Categories()
            
            ScrollableContent1()
            
            JapaneseFoodContent()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Text("Discover")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .padding(.leading, 30)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 28, weight: .light, design: .rounded))
                .padding(.trailing, 30)
            
        }
    }
}

struct Categories: View {
    var body: some View {
        HStack(spacing:50){
            VStack(alignment: .leading) {
                Text("Popular")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(Color.orange)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6, alignment: .leading)
                    .foregroundColor(Color.orange)
                    .padding(.top, -3)
            }
            VStack {
                Text("Rating")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.gray)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6, alignment: .leading)
                    .foregroundColor(Color.orange)
                    .opacity(0)
                    .padding(.top, -3)
            }
            VStack {
                Text("Recent")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.gray)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6, alignment: .leading)
                    .foregroundColor(Color.orange)
                    .opacity(0)
                    .padding(.top, -3)
            }
            Spacer()
        }
        .padding(.leading, 30)
        .padding(.top, 10)
    }
}

struct Card1: View {
    var body: some View {
        ZStack{
            Image("Mountain1")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading){
                Text("Mount Fuji")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                Text("Fujinomiya, Japan")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .padding(.top, 5)
            }
            .offset(x: -20, y: 110)
        }
    }
}

struct Card2: View {
    var body: some View {
        ZStack{
            Image("Mountain2")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading){
                Text("Mount Fuji")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                Text("Shibuya-ku, Japan")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .padding(.top, 5)
            }
            .offset(x: -20, y: 110)
        }
    }
}

struct ScrollableContent1: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 30){
                Card1()
                Card2()
                Card1()
                Card2()
            }
            .padding(.leading, 30)
            .padding(.trailing, 30)
        }
        .padding(.top, 20)
    }
}

struct Card4: View {
    var body: some View {
        ZStack{
            VStack{
                Text("")
            }
            .frame(width: 100, height: 140)
            .background(Color(#colorLiteral(red: 0.8971984982, green: 0.8973490596, blue: 0.8971786499, alpha: 1)))
            .cornerRadius(20)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
            .offset(y: 8)
            
            VStack{
                Image("Sushi1")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Sushi")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
            }
            .frame(width: 110, height: 140)
            .background(Color.white)
            .cornerRadius(20)
        }
    }
}

struct Card5: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(#colorLiteral(red: 0.8333098292, green: 0.8334503174, blue: 0.8332912922, alpha: 1)))
            VStack {
                Image("Roman")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Ramen")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
            }
        }
        .frame(width: 110, height: 140)
    }
}

struct Card6: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(#colorLiteral(red: 0.8333098292, green: 0.8334503174, blue: 0.8332912922, alpha: 1)))
            VStack {
                Image("Sushi2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Ramen")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
            }
        }
        .frame(width: 110, height: 140)
    }
}

struct JapaneseFoodContent: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Japanese Food")
                .font(.system(size: 34, weight: .bold, design: .rounded))
            
            HStack(spacing: 20){
                Card4()
                
                Card5()
                
                Card6()
                Spacer()
            }
        }
        .padding(.leading, 30)
        .padding(.top, 30)
    }
}
