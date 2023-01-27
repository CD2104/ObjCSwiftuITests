//
//  ContentViewController.swift
//  DemoForSwiftUI
//
//  Created by David Castro Cisneros on 26/01/23.
//

import SwiftUI

@objcMembers public class ContentViewController: UIViewController {
  let viewModel: ContentViewModel

  public init(viewModel: ContentViewModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  @objc public override func viewDidLoad() {
    super.viewDidLoad()

    let childVC = UIHostingController(rootView: ContentView(viewModel: viewModel))

    addChild(childVC)
    childVC.view.frame = view.bounds
    view.addSubview(childVC.view)
    childVC.didMove(toParent: self)
  }
}
