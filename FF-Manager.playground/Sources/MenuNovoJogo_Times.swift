//import Foundation
//import UIKit
//import PlaygroundSupport
//
//public class MenuNovoJogo_Times : UIViewController {
//    
//  //Declarando os componentes
//    
//    let label = UILabel()
//    let menu = UIImageView()
//    let logoVivoKeyd = UIImageView()
//    let logoLoud = UIImageView()
//    let logoIntz = UIImageView()
//    let logoTeamLiquid = UIImageView()
//    let logoCorinthians = UIImageView()
//    let initialText2 = UILabel()
//    let buttonBack = UIButton()
//    let button = UIButton()
//    let button2 = UIButton()
//    let button3 = UIButton()
//    let button4 = UIButton()
//    let button5 = UIButton()
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
//        //Texto do menu, sem background
//        
//        initialText2.frame = CGRect(x: 323, y: 194, width: 720, height: 100)
//        initialText2.text = "Para começar, escolha seu time:"
//        initialText2.textColor = .black
//        initialText2.adjustsFontSizeToFitWidth = true
//        initialText2.font = initialText2.font.withSize(65)
//        initialText2.textAlignment = .left
//
//        //Adicionando os botões
//        
//        button.frame = CGRect(x: 446, y: 330, width: 470, height: 112)
//        button.setTitle("       VIVO KEYD", for: .normal)
//        button.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
//        button.setTitleColor(.black, for: .normal)
//        button.titleLabel?.font = UIFont(name: "Arial", size: 40)
//        button.layer.cornerRadius = 12
//        button.tag = 0
//
//        
//        button2.frame = CGRect(x: 446, y: 465, width: 470, height: 112)
//        button2.setTitle("      LOUD", for: .normal)
//        button2.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
//        button2.setTitleColor(.black, for: .normal)
//        button2.titleLabel?.font = UIFont(name: "Arial", size: 40)
//        button2.layer.cornerRadius = 12
//        button2.tag = 1
//
//        
//        button3.frame = CGRect(x: 446, y: 600, width: 470, height: 112)
//        button3.setTitle("      INTZ", for: .normal)
//        button3.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
//        button3.setTitleColor(.black, for: .normal)
//        button3.titleLabel?.font = UIFont(name: "Arial", size: 40)
//        button3.layer.cornerRadius = 12
//        button3.tag = 2
//
//        
//        button4.frame = CGRect(x: 446, y: 735, width: 470, height: 112)
//        button4.setTitle("          TEAM LIQUID", for: .normal)
//        button4.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
//        button4.setTitleColor(.black, for: .normal)
//        button4.titleLabel?.font = UIFont(name: "Arial", size: 40)
//        button4.layer.cornerRadius = 12
//        button4.tag = 3
//        
//        
//        button5.frame = CGRect(x: 446, y: 870, width: 470, height: 112)
//        button5.setTitle("          CORINTHIANS", for: .normal)
//        button5.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
//        button5.setTitleColor(.black, for: .normal)
//        button5.titleLabel?.font = UIFont(name: "Arial", size: 40)
//        button5.layer.cornerRadius = 12
//        button5.tag = 4
//
//        
//        //Adicionando a imagem
//        
//        menu.contentMode = .scaleToFill
//        menu.frame = CGRect(x: 1220, y: 15, width: 94, height: 335)
//        menu.image = UIImage(imageLiteralResourceName: "imagemMenu.png")
//        
//        logoVivoKeyd.contentMode = .scaleToFill
//        logoVivoKeyd.frame = CGRect(x: 488, y: 337, width: 90, height: 90)
//        logoVivoKeyd.image = UIImage(imageLiteralResourceName: "VivoKeyd.png")
//        
//        logoLoud.contentMode = .scaleToFill
//        logoLoud.frame = CGRect(x: 490, y: 472, width: 90, height: 90)
//        logoLoud.image = UIImage(imageLiteralResourceName: "Loud.png")
//        
//        logoIntz.contentMode = .scaleToFill
//        logoIntz.frame = CGRect(x: 489, y: 627, width: 96, height: 59)
//        logoIntz.image = UIImage(imageLiteralResourceName: "Intz.png")
//        
//        logoTeamLiquid.contentMode = .scaleToFill
//        logoTeamLiquid.frame = CGRect(x: 491, y: 745, width: 86, height: 87)
//        logoTeamLiquid.image = UIImage(imageLiteralResourceName: "TeamLiquid.png")
//        
//        logoCorinthians.contentMode = .scaleToFill
//        logoCorinthians.frame = CGRect(x: 490, y: 884, width: 93, height: 94)
//        logoCorinthians.image = UIImage(imageLiteralResourceName: "Corinthians.png")
//        
//        buttonBack.frame = CGRect(x: 16, y: 4, width: 77, height: 77)
//        buttonBack.setImage(UIImage(imageLiteralResourceName: "Back.png"), for: .normal)
//        
//        view.addSubview(menu)
//        view.addSubview(buttonBack)
//        view.addSubview(label)
//        view.addSubview(initialText2)
//        view.addSubview(button)
//        view.addSubview(logoVivoKeyd)
//        view.addSubview(button2)
//        view.addSubview(logoLoud)
//        view.addSubview(button3)
//        view.addSubview(logoIntz)
//        view.addSubview(button4)
//        view.addSubview(logoTeamLiquid)
//        view.addSubview(button5)
//        view.addSubview(logoCorinthians)
//
//        self.view = view
//    }
//    
//    override public func viewDidLoad() {
//        button.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
//        button2.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
//        button3.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
//        button4.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
//        button5.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
//        buttonBack.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButtonBack), for: .touchUpInside)
//    }
//    
//    @IBAction func touchedButton(sender: UIButton){
//        teste = sender.tag
//        let home1 = Home(screenType: .ipadPro12_9, isPortrait: false)
//        self.navigationController?.show(home1, sender: nil)
//        }
//    
//    
//    @IBAction func touchedButtonBack(){
//        navigationController?.popViewController(animated: true)
//    }
//}
