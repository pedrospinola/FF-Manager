//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
  //Declarando os componentes
    
    let label = UILabel()
    let menu = UIImageView()
    let back = UIImageView()
    let initialText2 = UILabel()
    let button = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9529411765, blue: 0.9098039216, alpha: 1)
        
       //Adicionando o título principal
        
        label.frame = CGRect(x: 477, y: 85, width: 430, height: 82)
        label.text = "FF-Manager"
        label.textColor = .black
        label.adjustsFontSizeToFitWidth = true
        label.font = label.font.withSize(80)
        label.textAlignment = .center
        
        //Texto do menu, sem background
        
        initialText2.frame = CGRect(x: 323, y: 197, width: 720, height: 100)
        initialText2.text = "Para começar, escolha seu time:"
        initialText2.textColor = .black
        initialText2.adjustsFontSizeToFitWidth = true
        initialText2.font = initialText2.font.withSize(50)
        initialText2.textAlignment = .left

        //Adicionando os botões
        
        button.frame = CGRect(x: 446, y: 330, width: 470, height: 112)
        button.setTitle("VIVO KEYD", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Arial", size: 50)
        
        button2.frame = CGRect(x: 446, y: 465, width: 470, height: 112)
        button2.setTitle("LOUD", for: .normal)
        button2.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        button2.setTitleColor(.black, for: .normal)
        button2.titleLabel?.font = UIFont(name: "Arial", size: 50)
        
        button3.frame = CGRect(x: 446, y: 600, width: 470, height: 112)
        button3.setTitle("INTZ", for: .normal)
        button3.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        button3.setTitleColor(.black, for: .normal)
        button3.titleLabel?.font = UIFont(name: "Arial", size: 50)
        
        button4.frame = CGRect(x: 446, y: 735, width: 470, height: 112)
        button4.setTitle("TEAM LIQUID", for: .normal)
        button4.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        button4.setTitleColor(.black, for: .normal)
        button4.titleLabel?.font = UIFont(name: "Arial", size: 50)
        
        button5.frame = CGRect(x: 446, y: 870, width: 470, height: 112)
        button5.setTitle("CORINTHIAS", for: .normal)
        button5.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        button5.setTitleColor(.black, for: .normal)
        button5.titleLabel?.font = UIFont(name: "Arial", size: 50)
        
        //Adicionando a imagem
        
        menu.contentMode = .scaleToFill
        menu.frame = CGRect(x: 1220, y: 15, width: 94, height: 335)
        menu.image = UIImage(imageLiteralResourceName: "imagemMenu.png")
        
        back.contentMode = .scaleToFill
        back.frame = CGRect(x: 16, y: 4, width: 77, height: 77)
        back.image = UIImage(imageLiteralResourceName: "Back.png")
        
        view.addSubview(menu)
        view.addSubview(back)
        view.addSubview(label)
        view.addSubview(initialText2)
        view.addSubview(button)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)

        self.view = view
    }
    
    override func viewDidLoad() {
         button.addTarget(self, action: #selector(MyViewController.touchedButton), for: .touchUpInside)
         button2.addTarget(self, action: #selector(MyViewController.touchedButton2), for: .touchUpInside)
         button3.addTarget(self, action: #selector(MyViewController.touchedButton3), for: .touchUpInside)
         button4.addTarget(self, action: #selector(MyViewController.touchedButton4), for: .touchUpInside)
         button5.addTarget(self, action: #selector(MyViewController.touchedButton5), for: .touchUpInside)
    }
        @IBAction func touchedButton(){
            print("Vivo Keyd")
        }
        @IBAction func touchedButton2(){
            print("Loud")
        }
        @IBAction func touchedButton3(){
            print("Intz")
        }
        @IBAction func touchedButton4(){
            print("Team Liquid")
        }
        @IBAction func touchedButton5(){
            print("Corinthias")
        }
}
// Present the view controller in the Live View window

let viewController = MyViewController()
let vc = MyViewController(screenType: .ipadPro12_9, isPortrait: false)
PlaygroundPage.current.liveView = vc.scale(to: 0.5)
