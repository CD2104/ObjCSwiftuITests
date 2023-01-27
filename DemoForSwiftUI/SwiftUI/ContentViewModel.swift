//
//  ContentViewModel.swift
//  DemoForSwiftUI
//
//  Created by David Castro Cisneros on 26/01/23.
//

import Combine
import ObjectiveC

@objcMembers public final class ContentViewModel: NSObject, ObservableObject {
  @Published var title: String
  @Published var buttonText: String
  public var onTap: (() -> Void)?

  public init(title: String = "This is an injectable text",
              buttonText: String = "Click to trigger some action") {
    self.title = title
    self.buttonText = buttonText
  }
}
