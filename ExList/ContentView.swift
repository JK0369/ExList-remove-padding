//
//  ContentView.swift
//  ExList
//
//  Created by 김종권 on 2022/09/09.
//

import SwiftUI

struct ContentView: View {
  var items = (0...100).map(String.init).map(SomeModel.init)
  
  var body: some View {
//    NavigationView {
//      List {
//        ForEach(items) { item in
//          ZStack {
//            NavigationLink(
//              destination: {
//                Text(item.val)
//              },
//              label: {
//                EmptyView()
//              }
//            )
//            .opacity(0)
//            .buttonStyle(PlainButtonStyle())
//
//            HStack {
//              Text(item.val)
//            }
//          }
//          .listRowInsets(.init())
//        }
//      }
//      .navigationTitle("List 예제")
//    }
//    NavigationView {
//      List(items){ item in
//        ZStack {
//          NavigationLink(
//            destination: {
//              Image("background")
//                .aspectRatio(contentMode: .fit)
//            },
//            label: {
//              EmptyView()
//            }
//          )
//          .opacity(0)
//
//          HStack {
//            Image("background")
//              .aspectRatio(contentMode: .fit)
//          }
//        }
//      }
//      .navigationTitle("List 예제")
    
//    NavigationView {
//      List(items){ item in
//        ZStack {
//          NavigationLink(
//            destination: {
//              Image("background")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//            },
//            label: {
//              EmptyView()
//            }
//          )
//          .opacity(0)
//
//          HStack {
//            Image("background")
//              .resizable()
//              .aspectRatio(contentMode: .fit)
//          }
//        }
//      }
//      .navigationTitle("List 예제")
//    }
    
    NavigationView {
      List {
        ForEach(items) { item in // <-
          ZStack {
            NavigationLink(
              destination: {
                Image("background")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
              },
              label: {
                EmptyView()
              }
            )
            .opacity(0)

            HStack {
              Image("background")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
          }
          .listRowInsets(EdgeInsets()) // <-
        }
      }
      .navigationTitle("List 예제")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct SomeModel: Identifiable {
  let val: String
  var id: String { val }
}
