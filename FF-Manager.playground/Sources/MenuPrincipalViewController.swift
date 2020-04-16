//import Foundation
//import UIKit
//import PlaygroundSupport
//
//public class MenuPrincipalViewController : UIViewController {
//    
//  //Declarando os componentes
//
//    let buttonNJ = UIButton()
//    let label = UILabel()
//    let menu = UIImageView()
//    let initialText = UILabel()
//    let initialText2 = UILabel()
//    let buttonJS = UIButton()
//    let buttonT = UIButton()
//        
//    override public func loadView() {
//        let view = UIView()
//        view.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9529411765, blue: 0.9098039216, alpha: 1)
//
//       //Adicionando o título principal
//        
//        label.frame = CGRect(x: 477, y: 85, width: 430, height: 82)
//        label.text = "FF-Manager"
//        label.textColor = .black
//        label.adjustsFontSizeToFitWidth = true
//        label.font = label.font.withSize(80)
//        label.textAlignment = .center
//        
//    //Texto da tela do menu
//    
//        initialText.frame = CGRect(x: 24, y: 313, width: 890, height: 541)
//        initialText.text = "Bem vindo ao FF-Manager!\n\nAqui você assume o papel do gerente da sua equipe favorita de free fire! \n\nCompre jogadores e escale seu time para as batalhas! \n\nAssista o desempenho do seu time e torça pela vitória!\n\nGanhe moedas vencendo as disputas e vá ao mercado comprar jogadores cada vez mais fortes!"
//        initialText.textColor = .black
//        initialText.backgroundColor = .lightGray
//        initialText.adjustsFontSizeToFitWidth = true
//        initialText.font = initialText.font.withSize(37)
//        initialText.textAlignment = .left
//        initialText.numberOfLines = 11
//        
//        //Texto do menu, sem background
//        
//        initialText2.frame = CGRect(x: 24, y: 890, width: 850, height: 75)
//        initialText2.text = "Eai, preparado para se tornar um Pro Manager?"
//        initialText2.textColor = .black
//        initialText2.adjustsFontSizeToFitWidth = true
//        initialText2.font = initialText.font.withSize(50)
//        initialText2.textAlignment = .left
//
//        //Adicionando os botões
//        
//        buttonNJ.frame = CGRect(x: 965, y: 550, width: 315, height: 75)
//        buttonNJ.setTitle("Novo jogo", for: .normal)
//        buttonNJ.backgroundColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
//        buttonNJ.setTitleColor(.black, for: .normal)
//        buttonNJ.titleLabel?.font = UIFont(name: "Arial", size: 50)
//        buttonNJ.layer.cornerRadius = 12
//        
//        buttonJS.frame = CGRect(x: 965, y: 650, width: 315, height: 75)
//        buttonJS.setTitle("Jogos salvos", for: .normal)
//        buttonJS.backgroundColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
//        buttonJS.setTitleColor(.black, for: .normal)
//        buttonJS.titleLabel?.font = UIFont(name: "Arial", size: 50)
//        buttonJS.layer.cornerRadius = 12
//
//        
//        buttonT.frame = CGRect(x: 965, y: 750, width: 315, height: 75)
//        buttonT.setTitle("Tutorial", for: .normal)
//        buttonT.backgroundColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
//        buttonT.setTitleColor(.black, for: .normal)
//        buttonT.titleLabel?.font = UIFont(name: "Arial", size: 50)
//        buttonT.layer.cornerRadius = 12
//
//        
//        //Adicionando a imagem
//        
//        menu.contentMode = .scaleToFill
//        menu.frame = CGRect(x: 1220, y: 15, width: 94, height: 335)
//        menu.image = UIImage(imageLiteralResourceName: "imagemMenu.png")
//        
//        
//        view.addSubview(menu)
//        view.addSubview(label)
//        view.addSubview(initialText)
//        view.addSubview(initialText2)
//        view.addSubview(buttonNJ)
//        view.addSubview(buttonJS)
//        view.addSubview(buttonT)
//        
//        self.view = view
//        
//    }
//    
//    override public func viewDidLoad() {
//        buttonNJ.addTarget(self, action: #selector(MenuPrincipalViewController.touchedButtonNJ), for: .touchUpInside)
//        buttonJS.addTarget(self, action: #selector(MenuPrincipalViewController.touchedButtonJS), for: .touchUpInside)
//        buttonT.addTarget(self, action: #selector(MenuPrincipalViewController.touchedButtonT), for: .touchUpInside)
//    }
//        @IBAction func touchedButtonNJ(){
//            //print("Abre MenuNovoJogo")
//            let menuNovoJogo_Nome1 = MenuNovoJogo_Nome(screenType: .ipadPro12_9, isPortrait: false)
//            self.navigationController?.show(menuNovoJogo_Nome1, sender: nil)
//        }
//        
//        @IBAction func touchedButtonJS(){
//            let home1 = Home(screenType: .ipadPro12_9, isPortrait: false)
//            self.navigationController?.show(home1, sender: nil)
//        }
//        
//        @IBAction func touchedButtonT(){
//            print("Abre tutorial")
//        }
//    
//}
