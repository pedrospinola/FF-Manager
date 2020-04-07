//: [Previous](@previous)

//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
  //Declarando os componentes
    
    let label = UILabel()
    let menu = UIImageView()
    let initialText2 = UILabel()
    var textField = UITextField()
    let buttonBack = UIButton()
    let button5 = UIButton()
    
    var nome:String = "Normal"

    @IBOutlet weak var nomeUsuário: UITextField!
    
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
        
        initialText2.frame = CGRect(x: 54, y: 414, width: 944, height: 72)
        initialText2.text = "Como você gostaria de ser chamado?"
        initialText2.textColor = .black
        initialText2.adjustsFontSizeToFitWidth = true
        initialText2.font = initialText2.font.withSize(65)
        initialText2.textAlignment = .left
        
        //Adicionando o Text Field
        
        textField.frame = CGRect(x: 35, y: 492, width: 1003, height: 62)
        textField.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        textField.layer.cornerRadius = 18
        textField.font = textField.font?.withSize(30)

        //Adicionando os botões
        
        button5.frame = CGRect(x: 1155, y: 939, width: 186.93, height: 53.14)
        button5.setTitle("Avançar", for: .normal)
        button5.backgroundColor = #colorLiteral(red: 0.3294117647, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
        button5.setTitleColor(.black, for: .normal)
        button5.titleLabel?.font = UIFont(name: "Arial", size: 30)
        button5.layer.cornerRadius = 20

        
        //Adicionando a imagem
        
        menu.contentMode = .scaleToFill
        menu.frame = CGRect(x: 1220, y: 15, width: 94, height: 335)
        menu.image = UIImage(imageLiteralResourceName: "imagemMenu.png")
        
        buttonBack.frame = CGRect(x: 16, y: 4, width: 77, height: 77)
        buttonBack.setImage(UIImage(imageLiteralResourceName: "Back.png"), for: .normal)
        
        view.addSubview(menu)
        view.addSubview(buttonBack)
        view.addSubview(label)
        view.addSubview(initialText2)
        view.addSubview(textField)
        view.addSubview(button5)

        self.view = view
    }
    
    override func viewDidLoad() {
        
        buttonBack.addTarget(self, action: #selector(MyViewController.touchedButtonBack), for: .touchUpInside)
        button5.addTarget(self, action: #selector(MyViewController.touchedButton5), for: .touchUpInside)
        textField.addTarget(self, action: #selector (setter: MyViewController.nomeTF), for: .allTouchEvents)
        
    }
        
        @IBAction func touchedButton5(){
            print("Avança para a próxima página")
            lerNome()
            print(nome)
        }
    
        @IBAction func touchedButtonBack(){
            print("Retorna para a página anterior")
        }
    
        @IBOutlet weak var nomeTF: UITextField!

    func lerNome(){
        nome =  nomeTF.text ?? "0"
    }
    
        
    }
// Present the view controller in the Live View window

let viewController = MyViewController()
let vc = MyViewController(screenType: .ipadPro12_9, isPortrait: false)
PlaygroundPage.current.liveView = vc.scale(to: 0.5)


//: [Next](@next)
