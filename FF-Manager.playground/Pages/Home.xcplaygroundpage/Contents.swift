//: [Previous](@previous)

//: A UIKit based Playground for presenting user interface
  
//as variáveis timeSelected e logoTime vão ser definidas pelo MenoNovoJogo_Times
//a variável

import UIKit
import PlaygroundSupport

class Home : UIViewController {
    
  //Declarando os componentes
    
    let titulo = UILabel()
    let logo = UIImageView()
    let time = UILabel()
    let gerente = UILabel()
    let numeroPartidas = UILabel()
    let numeroVit = UILabel()
    let saldo = UILabel()
    let valorSaldo = UILabel()
    let escalacao = UIImageView()
    let star1 = UIImageView()
    let star2 = UIImageView()
    let star3 = UIImageView()
    let star4 = UIImageView()
    let star5 = UIImageView()
    let star6 = UIImageView()
    let starTime = UIImageView()
    let linhaPrincipal = UIImageView()
    let buttonBack = UIButton()
    let buttonNext = UIButton()
    
    //Declarando variáveis
    
    var timeSelected:String = "Nome time"
    var nPartidas:Int = 0
    var nome:String = "Nome"
    var nVit:Int = 0
    var cash: Float = 300000.00
    var logoTime:String = "VivoKeyd.png"

    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9529411765, blue: 0.9098039216, alpha: 1)
        
       //Adicionando o título principal
        
        titulo.frame = CGRect(x: 551.25, y: 0, width: 279.92, height: 81.6)
        titulo.text = "FF-Manager"
        titulo.textColor = .black
        titulo.adjustsFontSizeToFitWidth = true
        titulo.font = titulo.font.withSize(70)
        titulo.textAlignment = .center
        
        //Adicionando labels
        
        time.frame = CGRect(x: 900, y: 155, width: 155, height: 40)
        time.text = timeSelected
        time.textColor = .black
        time.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        time.adjustsFontSizeToFitWidth = true
        time.font = time.font.withSize(30)
        time.textAlignment = .center
        
        gerente.frame = CGRect(x: 564, y: 289.670, width: 242.92, height: 23.72)
        gerente.text = "Gerente: " + (nome)
        gerente.textColor = .black
        gerente.adjustsFontSizeToFitWidth = true
        gerente.font = gerente.font.withSize(27)
        gerente.textAlignment = .left
        
        numeroPartidas.frame = CGRect(x: 564, y: 352.25, width: 286.56, height: 23.72)
        numeroPartidas.text = "Número de partidas: " + String(format: "%i",nPartidas)
        numeroPartidas.textColor = .black
        numeroPartidas.adjustsFontSizeToFitWidth = true
        numeroPartidas.font = numeroPartidas.font.withSize(27)
        numeroPartidas.textAlignment = .left
        
        numeroVit.frame = CGRect(x: 564, y: 416.25, width: 291.31, height: 23.72)
        numeroVit.text = "Número de vitórias: " + String(format: "%i",nVit)
        numeroVit.textColor = .black
        numeroVit.adjustsFontSizeToFitWidth = true
        numeroVit.font = numeroVit.font.withSize(27)
        numeroVit.textAlignment = .left
        
        saldo.frame = CGRect(x: 564, y: 480.25, width: 276, height: 40)
        saldo.text = "Saldo:"
        saldo.textColor = .black
        saldo.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        saldo.adjustsFontSizeToFitWidth = true
        saldo.font = saldo.font.withSize(27)
        saldo.textAlignment = .left
        
        valorSaldo.frame = CGRect(x: 564, y: 480.25, width: 276, height: 40)
        valorSaldo.text = " R$ " + String(format: "%.2f", cash)
        valorSaldo.textColor = #colorLiteral(red: 0.3294117647, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
        valorSaldo.adjustsFontSizeToFitWidth = true
        valorSaldo.font = valorSaldo.font.withSize(27)
        valorSaldo.textAlignment = .right

        //Adicionando os botões
        
        buttonNext.frame = CGRect(x: 1135, y: 939, width: 210, height: 53.14)
        buttonNext.setTitle("Ir para partida", for: .normal)
        buttonNext.backgroundColor = #colorLiteral(red: 0.3294117647, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
        buttonNext.setTitleColor(.black, for: .normal)
        buttonNext.titleLabel?.font = UIFont(name: "Arial", size: 30)
        buttonNext.layer.cornerRadius = 20

        //Adicionando linha

        linhaPrincipal.contentMode = .scaleToFill
        linhaPrincipal.frame = CGRect(x: 0, y: 105, width: 1366.4, height: 1)
        linhaPrincipal.image = UIImage(imageLiteralResourceName: "Line1.png")
        
        //Adicionando estrelas
        
        starTime.contentMode = .scaleToFill
        starTime.frame = CGRect(x: 1059.91, y: 138.82, width: 86, height: 60)
        starTime.image = UIImage(imageLiteralResourceName: "Star2.png")
        
        star1.contentMode = .scaleToFill
        star1.frame = CGRect(x: 778, y: 673.58, width: 81.6, height: 56.93)
        star1.image = UIImage(imageLiteralResourceName: "Star.png")
        
        star2.contentMode = .scaleToFill
        star2.frame = CGRect(x: 965, y: 673.58, width: 81.6, height: 56.93)
        star2.image = UIImage(imageLiteralResourceName: "Star.png")
        
        star3.contentMode = .scaleToFill
        star3.frame = CGRect(x: 778, y: 800, width: 81.6, height: 56.93)
        star3.image = UIImage(imageLiteralResourceName: "Star.png")
        
        star4.contentMode = .scaleToFill
        star4.frame = CGRect(x: 965, y: 800, width: 81.6, height: 56.93)
        star4.image = UIImage(imageLiteralResourceName: "Star.png")
        
        star5.contentMode = .scaleToFill
        star5.frame = CGRect(x: 600, y: 673.58, width: 81.6, height: 56.93)
        star5.image = UIImage(imageLiteralResourceName: "Star2.png")
        
        star6.contentMode = .scaleToFill
        star6.frame = CGRect(x: 600, y: 800, width: 81.6, height: 56.93)
        star6.image = UIImage(imageLiteralResourceName: "Star2.png")
        
        
        //Adicionando a imagem
        
        
        logo.contentMode = .scaleToFill
        logo.frame = CGRect(x: 794, y: 122, width: 90, height: 90)
        logo.image = UIImage(imageLiteralResourceName: logoTime)
        
        escalacao.contentMode = .scaleToFill
        escalacao.frame = CGRect(x: 564, y: 586, width: 534.69, height: 340)
        escalacao.image = UIImage(imageLiteralResourceName: "Escalação.png")
        
        buttonBack.frame = CGRect(x: 16, y: 4, width: 77, height: 77)
        buttonBack.setImage(UIImage(imageLiteralResourceName: "Back.png"), for: .normal)
        
        view.addSubview(titulo)
        view.addSubview(linhaPrincipal)
        view.addSubview(logo)
        view.addSubview(time)
        view.addSubview(gerente)
        view.addSubview(numeroPartidas)
        view.addSubview(numeroVit)
        view.addSubview(saldo)
        view.addSubview(valorSaldo)
        view.addSubview(buttonBack)
        view.addSubview(buttonNext)
        view.addSubview(escalacao)
        view.addSubview(starTime)
        view.addSubview(star1)
        view.addSubview(star2)
        view.addSubview(star3)
        view.addSubview(star4)
        view.addSubview(star5)
        view.addSubview(star6)
        


        self.view = view
    }
    
    override func viewDidLoad() {
        
        buttonBack.addTarget(self, action: #selector(Home.touchedButtonBack), for: .touchUpInside)
        buttonNext.addTarget(self, action: #selector(Home.touchedButtonNext), for: .touchUpInside)
    }
        @IBAction func touchedButtonBack(){
            print("Retorna para a página anterior")
        }
    
        @IBAction func touchedButtonNext(){
            print("Inicia a partida")
            nPartidas = nPartidas + 1
            numeroPartidas.text = "Número de partidas: " + String(format: "%i",nPartidas)
        }
}
// Present the view controller in the Live View window

let home = Home()
let vc = Home(screenType: .ipadPro12_9, isPortrait: false)
PlaygroundPage.current.liveView = vc.scale(to: 0.5)


//: [Next](@next)
