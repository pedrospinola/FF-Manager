//: A UIKit based Playground for presenting user interface

  
import UIKit
import PlaygroundSupport

let menuPrincipalViewController = MenuPrincipalViewController(screenType: .ipadPro12_9, isPortrait: false)

let navigation = UINavigationController(rootViewController: menuPrincipalViewController)
navigation.navigationBar.isHidden = true
PlaygroundPage.current.liveView = navigation.scale(to: 0.5)





