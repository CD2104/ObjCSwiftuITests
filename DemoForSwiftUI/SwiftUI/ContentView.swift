//
//  ContentView.swift
//  Demo
//
//  Created by David Castro Cisneros on 26/01/23.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var viewModel: ContentViewModel

  var body: some View {
    VStack {
      HStack {
        Text(viewModel.title)
      }
      Button(action: {
        viewModel.onTap?()
      }, label: {
        Text(viewModel.buttonText)
          .foregroundColor(.white)
          .padding()
          .background(Color.green)
          .cornerRadius(16)
      })
      Spacer()
    }

    .padding()
  }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(viewModel: .init())
  }
}

