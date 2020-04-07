//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

var teste:Int = 0
var nome:String = "Nome"

class MenuPrincipalViewController : UIViewController {
    
  //Declarando os componentes

    let buttonNJ = UIButton()
    let label = UILabel()
    let menu = UIImageView()
    let initialText = UILabel()
    let initialText2 = UILabel()
    let buttonJS = UIButton()
    let buttonT = UIButton()
    
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
        
    //Texto da tela do menu
    
        initialText.frame = CGRect(x: 24, y: 313, width: 890, height: 541)
        initialText.text = "Bem vindo ao FF-Manager!\n\nAqui você assume o papel do gerente da sua equipe favorita de free fire! \n\nCompre jogadores e escale seu time para as batalhas! \n\nAssista o desempenho do seu time e torça pela vitória!\n\nGanhe moedas vencendo as disputas e vá ao mercado comprar jogadores cada vez mais fortes!"
        initialText.textColor = .black
        initialText.backgroundColor = .lightGray
        initialText.adjustsFontSizeToFitWidth = true
        initialText.font = initialText.font.withSize(50)
        initialText.textAlignment = .left
        initialText.numberOfLines = 11
        
        //Texto do menu, sem background
        
        initialText2.frame = CGRect(x: 24, y: 890, width: 850, height: 75)
        initialText2.text = "Eai, preparado para se tornar um Pro Manager?"
        initialText2.textColor = .black
        initialText2.adjustsFontSizeToFitWidth = true
        initialText2.font = initialText.font.withSize(50)
        initialText2.textAlignment = .left

        //Adicionando os botões
        
        buttonNJ.frame = CGRect(x: 965, y: 550, width: 315, height: 75)
        buttonNJ.setTitle("Novo jogo", for: .normal)
        buttonNJ.backgroundColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
        buttonNJ.setTitleColor(.black, for: .normal)
        buttonNJ.titleLabel?.font = UIFont(name: "Arial", size: 50)
        buttonNJ.layer.cornerRadius = 12
        
        buttonJS.frame = CGRect(x: 965, y: 650, width: 315, height: 75)
        buttonJS.setTitle("Jogos salvos", for: .normal)
        buttonJS.backgroundColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
        buttonJS.setTitleColor(.black, for: .normal)
        buttonJS.titleLabel?.font = UIFont(name: "Arial", size: 50)
        buttonJS.layer.cornerRadius = 12

        
        buttonT.frame = CGRect(x: 965, y: 750, width: 315, height: 75)
        buttonT.setTitle("Tutorial", for: .normal)
        buttonT.backgroundColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
        buttonT.setTitleColor(.black, for: .normal)
        buttonT.titleLabel?.font = UIFont(name: "Arial", size: 50)
        buttonT.layer.cornerRadius = 12

        
        //Adicionando a imagem
        
        menu.contentMode = .scaleToFill
        menu.frame = CGRect(x: 1220, y: 15, width: 94, height: 335)
        menu.image = UIImage(imageLiteralResourceName: "imagemMenu.png")
        
        
        view.addSubview(menu)
        view.addSubview(label)
        view.addSubview(initialText)
        view.addSubview(initialText2)
        view.addSubview(buttonNJ)
        view.addSubview(buttonJS)
        view.addSubview(buttonT)
        
        self.view = view
        
    }
    
    override func viewDidLoad() {
        buttonNJ.addTarget(self, action: #selector(MenuPrincipalViewController.touchedButtonNJ), for: .touchUpInside)
        buttonJS.addTarget(self, action: #selector(MenuPrincipalViewController.touchedButtonJS), for: .touchUpInside)
        buttonT.addTarget(self, action: #selector(MenuPrincipalViewController.touchedButtonT), for: .touchUpInside)
    }
        @IBAction func touchedButtonNJ(){
            //print("Abre MenuNovoJogo")
            self.navigationController?.show(menuNovoJogo_Nome, sender: nil)
        }
        
        @IBAction func touchedButtonJS(){
            print("Abre o último jogo salvo")
        }
        
        @IBAction func touchedButtonT(){
            print("Abre tutorial")
        }
    
}

//Tela do menuNovoJogo_Nome:

class MenuNovoJogo_Nome : UIViewController {
    
  //Declarando os componentes
    
    let label = UILabel()
    let menu = UIImageView()
    let initialText2 = UILabel()
    var textField = UITextField()
    let buttonBack = UIButton()
    let button5 = UIButton()

    @IBOutlet weak var nomeUsuário: UITextField!
    
    override func loadView() {
        let view = UIView()
        self.view = view
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
        button5.backgroundColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
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
            }
    
    override func viewDidLoad() {
        
        buttonBack.addTarget(self, action: #selector(MenuNovoJogo_Nome.touchedButtonBack), for: .touchUpInside)
        button5.addTarget(self, action: #selector(MenuNovoJogo_Nome.touchedButton5), for: .touchUpInside)
        textField.addTarget(self, action: #selector (setter: MenuNovoJogo_Nome.nomeTF), for: .allTouchEvents)
        
    }
        
        @IBAction func touchedButton5(){
            //print("Avança para a próxima página")
            lerNome()
            self.navigationController?.show(menuNovoJogo_Times, sender: nil)
        }
    
        @IBAction func touchedButtonBack(){
            //print("Retorna para a página anterior")
            navigationController?.popViewController(animated: true)
        }
    
        @IBOutlet weak var nomeTF: UITextField!

        func lerNome(){
            nome =  nomeTF.text ?? "0"
        }
        
    }

class MenuNovoJogo_Times : UIViewController {
    
  //Declarando os componentes
    
    let label = UILabel()
    let menu = UIImageView()
    let logoVivoKeyd = UIImageView()
    let logoLoud = UIImageView()
    let logoIntz = UIImageView()
    let logoTeamLiquid = UIImageView()
    let logoCorinthias = UIImageView()
    let initialText2 = UILabel()
    let buttonBack = UIButton()
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
        
        initialText2.frame = CGRect(x: 323, y: 194, width: 720, height: 100)
        initialText2.text = "Para começar, escolha seu time:"
        initialText2.textColor = .black
        initialText2.adjustsFontSizeToFitWidth = true
        initialText2.font = initialText2.font.withSize(65)
        initialText2.textAlignment = .left

        //Adicionando os botões
        
        button.frame = CGRect(x: 446, y: 330, width: 470, height: 112)
        button.setTitle("       VIVO KEYD", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Arial", size: 40)
        button.layer.cornerRadius = 12

        
        button2.frame = CGRect(x: 446, y: 465, width: 470, height: 112)
        button2.setTitle("      LOUD", for: .normal)
        button2.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        button2.setTitleColor(.black, for: .normal)
        button2.titleLabel?.font = UIFont(name: "Arial", size: 40)
        button2.layer.cornerRadius = 12

        
        button3.frame = CGRect(x: 446, y: 600, width: 470, height: 112)
        button3.setTitle("      INTZ", for: .normal)
        button3.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        button3.setTitleColor(.black, for: .normal)
        button3.titleLabel?.font = UIFont(name: "Arial", size: 40)
        button3.layer.cornerRadius = 12

        
        button4.frame = CGRect(x: 446, y: 735, width: 470, height: 112)
        button4.setTitle("          TEAM LIQUID", for: .normal)
        button4.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        button4.setTitleColor(.black, for: .normal)
        button4.titleLabel?.font = UIFont(name: "Arial", size: 40)
        button4.layer.cornerRadius = 12
        
        
        button5.frame = CGRect(x: 446, y: 870, width: 470, height: 112)
        button5.setTitle("          CORINTHIAS", for: .normal)
        button5.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        button5.setTitleColor(.black, for: .normal)
        button5.titleLabel?.font = UIFont(name: "Arial", size: 40)
        button5.layer.cornerRadius = 12

        
        //Adicionando a imagem
        
        menu.contentMode = .scaleToFill
        menu.frame = CGRect(x: 1220, y: 15, width: 94, height: 335)
        menu.image = UIImage(imageLiteralResourceName: "imagemMenu.png")
        
        logoVivoKeyd.contentMode = .scaleToFill
        logoVivoKeyd.frame = CGRect(x: 488, y: 337, width: 90, height: 90)
        logoVivoKeyd.image = UIImage(imageLiteralResourceName: "VivoKeyd.png")
        
        logoLoud.contentMode = .scaleToFill
        logoLoud.frame = CGRect(x: 490, y: 472, width: 90, height: 90)
        logoLoud.image = UIImage(imageLiteralResourceName: "Loud.png")
        
        logoIntz.contentMode = .scaleToFill
        logoIntz.frame = CGRect(x: 489, y: 627, width: 96, height: 59)
        logoIntz.image = UIImage(imageLiteralResourceName: "Intz.png")
        
        logoTeamLiquid.contentMode = .scaleToFill
        logoTeamLiquid.frame = CGRect(x: 491, y: 745, width: 86, height: 87)
        logoTeamLiquid.image = UIImage(imageLiteralResourceName: "TeamLiquid.png")
        
        logoCorinthias.contentMode = .scaleToFill
        logoCorinthias.frame = CGRect(x: 490, y: 884, width: 93, height: 94)
        logoCorinthias.image = UIImage(imageLiteralResourceName: "Corinthias.png")
        
        buttonBack.frame = CGRect(x: 16, y: 4, width: 77, height: 77)
        buttonBack.setImage(UIImage(imageLiteralResourceName: "Back.png"), for: .normal)
        
        view.addSubview(menu)
        view.addSubview(buttonBack)
        view.addSubview(label)
        view.addSubview(initialText2)
        view.addSubview(button)
        view.addSubview(logoVivoKeyd)
        view.addSubview(button2)
        view.addSubview(logoLoud)
        view.addSubview(button3)
        view.addSubview(logoIntz)
        view.addSubview(button4)
        view.addSubview(logoTeamLiquid)
        view.addSubview(button5)
        view.addSubview(logoCorinthias)

        self.view = view
    }
    
    override func viewDidLoad() {
        button.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
        button2.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton2), for: .touchUpInside)
        button3.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton3), for: .touchUpInside)
        button4.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton4), for: .touchUpInside)
        button5.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton5), for: .touchUpInside)
        buttonBack.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButtonBack), for: .touchUpInside)
    }
        @IBAction func touchedButton(){
            teste = 0
            let home1 = Home(screenType: .ipadPro12_9, isPortrait: false)
            home1.scale(to: 0.5)
            self.navigationController?.show(home1, sender: nil)
        }
        @IBAction func touchedButton2(){
            teste = 1
            let home1 = Home(screenType: .ipadPro12_9, isPortrait: false)
            home1.scale(to: 0.5)
            self.navigationController?.show(home1, sender: nil)
        }
        @IBAction func touchedButton3(){
            teste = 2
            let home1 = Home(screenType: .ipadPro12_9, isPortrait: false)
            home1.scale(to: 0.5)
            self.navigationController?.show(home1, sender: nil)
        }
        @IBAction func touchedButton4(){
            teste = 3
            let home1 = Home(screenType: .ipadPro12_9, isPortrait: false)
            home1.scale(to: 0.5)
            self.navigationController?.show(home1, sender: nil)
        }
        @IBAction func touchedButton5(){
            teste = 4
            let home1 = Home(screenType: .ipadPro12_9, isPortrait: false)
            home1.scale(to: 0.5)
            self.navigationController?.show(home1, sender: nil)
        }
    
        @IBAction func touchedButtonBack(){
            //print("Retorna para a página anterior")
            navigationController?.popViewController(animated: true)
        }
}

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
    
    var colorBackground = UIImageView()
    var timeSelected:[String] = ["Vivo Keyd", "Loud", "Intz", "Team Liquid", "Corinthias"]
    var nPartidas:Int = 0
    var nVit:Int = 0
    var cash: Float = 300000.00
    var logoTime:[String] = ["VivoKeyd.png", "Loud.png", "Intz.png", "TeamLiquid.png", "Corinthias.png"]
    var corBackground:[String] = ["corVivoKeyd.png", "corLoud.png", "corIntz.png", "corTeamLiquid.png", "corCorinthias.png"]

    
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
        time.text = timeSelected[teste]
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
        valorSaldo.textColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
        valorSaldo.adjustsFontSizeToFitWidth = true
        valorSaldo.font = valorSaldo.font.withSize(27)
        valorSaldo.textAlignment = .right

        //Adicionando os botões
        
        buttonNext.frame = CGRect(x: 1135, y: 1040, width: 210, height: 53.14)
        buttonNext.setTitle("Ir para partida", for: .normal)
        buttonNext.backgroundColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
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
        
        
        colorBackground.contentMode = .scaleToFill
        colorBackground.frame = CGRect(x: -10, y: 0, width: 1400, height: 1150)
        colorBackground.image = UIImage(imageLiteralResourceName: corBackground[teste])
        
        logo.contentMode = .scaleToFill
        logo.frame = CGRect(x: 794, y: 122, width: 90, height: 90)
        logo.image = UIImage(imageLiteralResourceName: logoTime[teste])
        
        escalacao.contentMode = .scaleToFill
        escalacao.frame = CGRect(x: 564, y: 586, width: 534.69, height: 340)
        escalacao.image = UIImage(imageLiteralResourceName: "Escalação.png")
        
        buttonBack.frame = CGRect(x: 16, y: 4, width: 77, height: 77)
        buttonBack.setImage(UIImage(imageLiteralResourceName: "Back.png"), for: .normal)
        
        //view.addSubview(colorBackground)
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
            //print("Retorna para a página anterior")
            navigationController?.popViewController(animated: true)
        }
    
        @IBAction func touchedButtonNext(){
            //print("Inicia a partida")
            nPartidas = nPartidas + 1
            numeroPartidas.text = "Número de partidas: " + String(format: "%i",nPartidas)
        }
}

let menuPrincipalViewController = MenuPrincipalViewController(screenType: .ipadPro12_9, isPortrait: false)
menuPrincipalViewController.scale(to: 0.5)

let menuNovoJogo_Nome = MenuNovoJogo_Nome(screenType: .ipadPro12_9, isPortrait: false)
menuNovoJogo_Nome.scale(to: 0.5)

let menuNovoJogo_Times = MenuNovoJogo_Times(screenType: .ipadPro12_9, isPortrait: false)
menuNovoJogo_Times.scale(to: 0.5)

let home = Home(screenType: .ipadPro12_9, isPortrait: false)
home.scale(to: 0.5)

let navigation = UINavigationController(rootViewController: menuPrincipalViewController)
navigation.navigationBar.isHidden = true


PlaygroundPage.current.liveView = navigation



