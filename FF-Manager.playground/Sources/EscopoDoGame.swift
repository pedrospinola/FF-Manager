import Foundation
import UIKit
import PlaygroundSupport

var teste:Int = 0
var nome:String = "Nome"

public class MenuPrincipalViewController : UIViewController {
    
  //Declarando os componentes

    let buttonNJ = UIButton()
    let label = UILabel()
    let menu = UIImageView()
    let initialText = UILabel()
    let initialText2 = UILabel()
    let buttonJS = UIButton()
    let buttonT = UIButton()
        
    override public func loadView() {
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
        initialText.font = initialText.font.withSize(37)
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
    
    override public func viewDidLoad() {
        buttonNJ.addTarget(self, action: #selector(MenuPrincipalViewController.touchedButtonNJ), for: .touchUpInside)
        buttonJS.addTarget(self, action: #selector(MenuPrincipalViewController.touchedButtonJS), for: .touchUpInside)
        buttonT.addTarget(self, action: #selector(MenuPrincipalViewController.touchedButtonT), for: .touchUpInside)
    }
        @IBAction func touchedButtonNJ(){
            //print("Abre MenuNovoJogo")
            let menuNovoJogo_Nome1 = MenuNovoJogo_Nome(screenType: .ipadPro12_9, isPortrait: false)
            self.navigationController?.show(menuNovoJogo_Nome1, sender: nil)
        }
        
        @IBAction func touchedButtonJS(){
            let home1 = Home(screenType: .ipadPro12_9, isPortrait: false)
            self.navigationController?.show(home1, sender: nil)
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
    
    override public func loadView() {
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
        
        textField.frame = CGRect(x: 35, y: 520, width: 1003, height: 62)
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
            let menuNovoJogo_Times1 = MenuNovoJogo_Times(screenType: .ipadPro12_9, isPortrait: false)
            self.navigationController?.show(menuNovoJogo_Times1, sender: nil)
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
    let logoCorinthians = UIImageView()
    let initialText2 = UILabel()
    let buttonBack = UIButton()
    let button = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    
    override public func loadView() {
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
        button.tag = 0

        
        button2.frame = CGRect(x: 446, y: 465, width: 470, height: 112)
        button2.setTitle("      LOUD", for: .normal)
        button2.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        button2.setTitleColor(.black, for: .normal)
        button2.titleLabel?.font = UIFont(name: "Arial", size: 40)
        button2.layer.cornerRadius = 12
        button2.tag = 1

        
        button3.frame = CGRect(x: 446, y: 600, width: 470, height: 112)
        button3.setTitle("      INTZ", for: .normal)
        button3.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        button3.setTitleColor(.black, for: .normal)
        button3.titleLabel?.font = UIFont(name: "Arial", size: 40)
        button3.layer.cornerRadius = 12
        button3.tag = 2

        
        button4.frame = CGRect(x: 446, y: 735, width: 470, height: 112)
        button4.setTitle("          TEAM LIQUID", for: .normal)
        button4.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        button4.setTitleColor(.black, for: .normal)
        button4.titleLabel?.font = UIFont(name: "Arial", size: 40)
        button4.layer.cornerRadius = 12
        button4.tag = 3
        
        
        button5.frame = CGRect(x: 446, y: 870, width: 470, height: 112)
        button5.setTitle("          CORINTHIANS", for: .normal)
        button5.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        button5.setTitleColor(.black, for: .normal)
        button5.titleLabel?.font = UIFont(name: "Arial", size: 40)
        button5.layer.cornerRadius = 12
        button5.tag = 4

        
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
        
        logoCorinthians.contentMode = .scaleToFill
        logoCorinthians.frame = CGRect(x: 490, y: 884, width: 93, height: 94)
        logoCorinthians.image = UIImage(imageLiteralResourceName: "Corinthians.png")
        
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
        view.addSubview(logoCorinthians)

        self.view = view
    }
    
    override func viewDidLoad() {
        button.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
        button2.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
        button3.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
        button4.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
        button5.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButton), for: .touchUpInside)
        buttonBack.addTarget(self, action: #selector(MenuNovoJogo_Times.touchedButtonBack), for: .touchUpInside)
    }
    
    @IBAction func touchedButton(sender: UIButton){
        teste = sender.tag
        let home1 = Home(screenType: .ipadPro12_9, isPortrait: false)
        self.navigationController?.show(home1, sender: nil)
        }
    
    
    @IBAction func touchedButtonBack(){
        navigationController?.popViewController(animated: true)
    }
}

public class Home : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  //Declarando os componentes
    
    let titulo = UILabel()
    let logo = UIImageView()
    let time = UILabel()
    let gerente = UILabel()
    let numeroPartidas = UILabel()
    let numeroVit = UILabel()
    let saldo = UILabel()
    let valorSaldo = UILabel()
    let linhaEscalacaoH1 = UIImageView()
    let linhaEscalacaoH2 = UIImageView()
    let linhaEscalacaoH3 = UIImageView()
    let linhaEscalacaoH4 = UIImageView()
    let linhaEscalacaoV1 = UIImageView()
    let linhaEscalacaoV2 = UIImageView()
    let linhaEscalacaoV3 = UIImageView()
    let escalaçãoLabel = UILabel()
    let escalaçãoLabel2 = UILabel()
    let escalaçãoLabel3 = UILabel()
    var star1 = UIImageView()
    let jogador01 = UILabel()
    public let star2 = UIImageView()
    let jogador02 = UILabel()
    public let star3 = UIImageView()
    let jogador03 = UILabel()
    public let star4 = UIImageView()
    let jogador04 = UILabel()
    public let star5 = UIImageView()
    let jogador05 = UILabel()
    public let star6 = UIImageView()
    let jogador06 = UILabel()
    let starTime = UIImageView()
    let overallTime = UILabel()
    let linhaPrincipal = UIImageView()
    let buttonBack = UIButton()
    let buttonNext = UIButton()
    let linhaMercado = UIImageView()
    let mercado = UILabel()
    let linhaMercado2 = UIImageView()
    let linhaMercado3 = UIImageView()
    let linhaMercado4 = UIImageView()
    let labelMercadoTime = UILabel()
    let labelMercadoRank = UILabel()
    let labelMercadoNome = UILabel()
    let labelMercadoPreço = UILabel()
    let labelMercadoComprar = UILabel()
    var mercadoTableView = UITableView()
    var mercadoTableViewVenda = UITableView()
    var segmentedMercado = UISegmentedControl()
    let items = ["Comprar", "Vender"]
    
    //Declarando variáveis
    
    var times: [TimeFF] = [TimeFF(nome: "Vivo Keyd"), TimeFF(nome: "Loud"), TimeFF(nome: "Intz"), TimeFF(nome: "Team Liquid"),TimeFF(nome: "Corinthians")]
    var jogadores: [Jogador] = []
    
    var colorBackground = UIImageView()
    var nPartidas:Int = 0
    var nVit:Int = 0
    var cash: Float = 300000.00
    var mediaOverall: Int = 0
    var jogadoresDentroDoTime: [Jogador] = []
    var jogadoresForaDoTime: [Jogador] = []
    var jogadoresTransicao: [Jogador] = []
    var jogadorVazio: String = ""
    
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9529411765, blue: 0.9098039216, alpha: 1)
        
        self.times[teste].escolhido = true
        
        self.jogadores = [Jogador(nome: "Nobru", overall: 63, time: times[4], preco: 3500.0), Jogador(nome: "Brabo", overall: 52, time: times[0], preco: 2100.0), Jogador(nome: "Lukas", overall: 62, time: times[2], preco: 3300.0), Jogador(nome: "Boyca", overall: 56, time: times[0], preco: 2000.0), Jogador(nome: "Peu", overall: 61, time: times[3], preco: 3300.0), Jogador(nome: "Will", overall: 58, time: times[1], preco: 3100.0), Jogador(nome: "Lukastd", overall: 57, time: times[3], preco: 3060.0), Jogador(nome: "Fixa", overall: 55, time: times[4], preco: 3000.0), Jogador(nome: "Bradoock", overall: 53, time: times[1], preco: 2950.0), Jogador(nome: "Thiago", overall: 48, time: times[0], preco: 2150.0), Jogador(nome: "Vinizx", overall: 53, time: times[1], preco: 2930.0), Jogador(nome: "Moreira", overall: 52, time: times[2], preco: 2880.0), Jogador(nome: "Raposo", overall: 50, time: times[3], preco: 2800.0), Jogador(nome: "Martins", overall: 55, time: times[0], preco: 2500.0), Jogador(nome: "Kroonos", overall: 51, time: times[0], preco: 2200.0), Jogador(nome: "Shariin", overall: 49, time: times[1], preco: 2800.0), Jogador(nome: "Supreme", overall: 56, time: times[2], preco: 2980.0), Jogador(nome: "Japabkr", overall: 57, time: times[3], preco: 2970.0), Jogador(nome: "Japa", overall: 63, time: times[4], preco: 3500.0), Jogador(nome: "Pires", overall: 59, time: times[4], preco: 3200.0), Jogador(nome: "Lukaskn", overall: 51, time: times[2], preco: 2950.0)]
        
        self.jogadoresTransicao = [Jogador(nome: " ", overall: 1, time: times[0], preco: 0.1)]
        
        
        var x:Int = 0
        
        while x < jogadores.count {
            
            if jogadores[x].time.escolhido == true {
                jogadoresDentroDoTime.append(jogadores[x])
            } else{
                jogadoresForaDoTime.append(jogadores[x])
            }
            x = x + 1
        }
        
        calculamedia()
        
        //Adicionando TableView
        
        mercadoTableView.frame = CGRect(x: 0, y: 245, width: 537.5, height: 800)
        mercadoTableView.register(MercadoCell.self, forCellReuseIdentifier: "mercadoCell")
        mercadoTableView.delegate = self
        mercadoTableView.dataSource = self
        mercadoTableView.isScrollEnabled = true
        mercadoTableView.backgroundColor = .clear
        
        mercadoTableViewVenda.frame = CGRect(x: 0, y: 245, width: 537.5, height: 800)
        mercadoTableViewVenda.register(MercadoCell.self, forCellReuseIdentifier: "mercadoCell")
        mercadoTableViewVenda.delegate = self
        mercadoTableViewVenda.dataSource = self
        mercadoTableViewVenda.isScrollEnabled = true
        mercadoTableViewVenda.backgroundColor = .clear
        
       //Adicionando o título principal
        
        titulo.frame = CGRect(x: 551.25, y: 0, width: 279.92, height: 81.6)
        titulo.text = "FF-Manager"
        titulo.textColor = .black
        titulo.adjustsFontSizeToFitWidth = true
        titulo.font = titulo.font.withSize(70)
        titulo.textAlignment = .center
        
        //Adicionando labels
        
        time.frame = CGRect(x: 900, y: 155, width: 155, height: 40)
        time.text = times[teste].nome
        time.textColor = .black
        time.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        time.adjustsFontSizeToFitWidth = true
        time.font = time.font.withSize(30)
        time.textAlignment = .center
        
        mercado.frame = CGRect(x: 0, y: 106, width: 537, height: 47)
        mercado.text = "Mercado"
        mercado.textColor = .black
        mercado.adjustsFontSizeToFitWidth = true
        mercado.font = mercado.font.withSize(35)
        mercado.textAlignment = .center
        
        labelMercadoTime.frame = CGRect(x: 23, y: 205, width: 96, height: 29)
        labelMercadoTime.text = "Time"
        labelMercadoTime.textColor = .black
        labelMercadoTime.adjustsFontSizeToFitWidth = true
        labelMercadoTime.font = labelMercadoTime.font.withSize(25)
        labelMercadoTime.textAlignment = .left
        
        labelMercadoRank.frame = CGRect(x: 104, y: 205, width: 96, height: 29)
        labelMercadoRank.text = "Rank"
        labelMercadoRank.textColor = .black
        labelMercadoRank.adjustsFontSizeToFitWidth = true
        labelMercadoRank.font = labelMercadoRank.font.withSize(25)
        labelMercadoRank.textAlignment = .left
        
        labelMercadoNome.frame = CGRect(x: 175, y: 205, width: 96, height: 29)
        labelMercadoNome.text = "Nome"
        labelMercadoNome.textColor = .black
        labelMercadoNome.adjustsFontSizeToFitWidth = true
        labelMercadoNome.font = labelMercadoNome.font.withSize(25)
        labelMercadoNome.textAlignment = .left
        
        labelMercadoPreço.frame = CGRect(x: 313, y: 205, width: 96, height: 29)
        labelMercadoPreço.text = "Preço"
        labelMercadoPreço.textColor = .black
        labelMercadoPreço.adjustsFontSizeToFitWidth = true
        labelMercadoPreço.font = labelMercadoPreço.font.withSize(25)
        labelMercadoPreço.textAlignment = .left
        
        labelMercadoComprar.frame = CGRect(x: 429, y: 205, width: 96, height: 29)
        labelMercadoComprar.text = "Comprar"
        labelMercadoComprar.textColor = .black
        labelMercadoComprar.adjustsFontSizeToFitWidth = true
        labelMercadoComprar.font = labelMercadoComprar.font.withSize(25)
        labelMercadoComprar.textAlignment = .left
        
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
        valorSaldo.text = " R$ " + String(format: "%.2f", times[teste].cash)
        valorSaldo.textColor = #colorLiteral(red: 0.3529411765, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
        valorSaldo.adjustsFontSizeToFitWidth = true
        valorSaldo.font = valorSaldo.font.withSize(27)
        valorSaldo.textAlignment = .right

        //Adicionando os botões
        
        buttonNext.frame = CGRect(x: 1130, y: 20, width: 210, height: 53.14)
        buttonNext.setTitle("Ir para partida", for: .normal)
        buttonNext.backgroundColor = #colorLiteral(red: 0.3294117647, green: 0.6823529412, blue: 0.1960784314, alpha: 1)
        buttonNext.setTitleColor(.black, for: .normal)
        buttonNext.titleLabel?.font = UIFont(name: "Arial", size: 30)
        buttonNext.layer.cornerRadius = 20
        
        if jogadoresDentroDoTime.count < 4{
            buttonNext.isHidden = true
        } else{
            buttonNext.isHidden = false
        }

        //Adicionando linha

        linhaPrincipal.contentMode = .scaleToFill
        linhaPrincipal.frame = CGRect(x: 0, y: 105, width: 1366.4, height: 1)
        linhaPrincipal.image = UIImage(imageLiteralResourceName: "Line1.png")
        
        linhaMercado.contentMode = .scaleToFill
        linhaMercado.frame = CGRect(x: 0, y: 153, width: 538, height: 1)
        linhaMercado.image = UIImage(imageLiteralResourceName: "Line2.png")
        
        linhaMercado2.contentMode = .scaleToFill
        linhaMercado2.frame = CGRect(x: 0, y: 197, width: 538, height: 1)
        linhaMercado2.image = UIImage(imageLiteralResourceName: "Line2.png")
        
        linhaMercado3.contentMode = .scaleToFill
        linhaMercado3.frame = CGRect(x: 0, y: 240, width: 538, height: 1)
        linhaMercado3.image = UIImage(imageLiteralResourceName: "Line2.png")
        
        linhaMercado4.contentMode = .scaleToFill
        linhaMercado4.frame = CGRect(x: 538, y: 105, width: 1, height: 919)
        linhaMercado4.image = UIImage(imageLiteralResourceName: "Line3.png")
        
        //Adicionando estrelas
        
        starTime.contentMode = .scaleToFill
        starTime.frame = CGRect(x: 1059.91, y: 138.82, width: 86, height: 60)
        starTime.image = UIImage(imageLiteralResourceName: "Star2.png")
        
        
        overallTime.frame = CGRect(x: 1068, y: 148, width: 70, height: 50)
        overallTime.text = String(mediaOverall)
        overallTime.textColor = .black
        overallTime.adjustsFontSizeToFitWidth = true
        overallTime.font = numeroVit.font.withSize(24)
        overallTime.textAlignment = .center
        
        
        star1.contentMode = .scaleToFill
        star1.frame = CGRect(x: 778, y: 673.58, width: 81.6, height: 56.93)
        star1.image = UIImage(imageLiteralResourceName: "Star.png")

        //Adicionando o gesto de arrastar
        star1.isUserInteractionEnabled = true
        let panStar1 = UIPanGestureRecognizer(target: self, action: #selector(starPan1))
        star1.addGestureRecognizer(panStar1)
        
        jogador01.frame = CGRect(x: 781, y: 673.58+56.93, width: 80, height: 50)
        if jogadoresDentroDoTime.count > 0{
            jogador01.text = String(jogadoresDentroDoTime[0].nome)
        } else{
            jogador01.text = jogadorVazio
        }
        
        jogador01.textColor = .black
        jogador01.adjustsFontSizeToFitWidth = true
        jogador01.font = numeroVit.font.withSize(24)
        jogador01.textAlignment = .center
        
        star2.contentMode = .scaleToFill
        star2.frame = CGRect(x: 965, y: 673.58, width: 81.6, height: 56.93)
        star2.image = UIImage(imageLiteralResourceName: "Star.png")
        star2.isUserInteractionEnabled = true
        let panStar2 = UIPanGestureRecognizer(target: self, action: #selector(starPan2))
        star2.addGestureRecognizer(panStar2)
        
        jogador02.frame = CGRect(x: 968, y: 673.58+56.93, width: 80, height: 50)
        
        if jogadoresDentroDoTime.count > 1{
            jogador02.text = String(jogadoresDentroDoTime[1].nome)
        } else{
            jogador02.text = jogadorVazio
        }
        jogador02.textColor = .black
        jogador02.adjustsFontSizeToFitWidth = true
        jogador02.font = numeroVit.font.withSize(24)
        jogador02.textAlignment = .center
        
        star3.contentMode = .scaleToFill
        star3.frame = CGRect(x: 778, y: 800, width: 81.6, height: 56.93)
        star3.image = UIImage(imageLiteralResourceName: "Star.png")
        star3.isUserInteractionEnabled = true
        let panStar3 = UIPanGestureRecognizer(target: self, action: #selector(starPan3))
        star3.addGestureRecognizer(panStar3)
        
        jogador03.frame = CGRect(x: 781, y: 800+56.93, width: 80, height: 50)
        
        if jogadoresDentroDoTime.count > 2{
            jogador03.text = String(jogadoresDentroDoTime[2].nome)
        } else{
            jogador03.text = jogadorVazio
        }
        jogador03.textColor = .black
        jogador03.adjustsFontSizeToFitWidth = true
        jogador03.font = numeroVit.font.withSize(24)
        jogador03.textAlignment = .center
        
        star4.contentMode = .scaleToFill
        star4.frame = CGRect(x: 965, y: 800, width: 81.6, height: 56.93)
        star4.image = UIImage(imageLiteralResourceName: "Star.png")
        star4.isUserInteractionEnabled = true
        let panStar4 = UIPanGestureRecognizer(target: self, action: #selector(starPan4))
        star4.addGestureRecognizer(panStar4)
        
        jogador04.frame = CGRect(x: 968, y: 800+56.93, width: 80, height: 50)
        
        if jogadoresDentroDoTime.count > 3{
            jogador04.text = String(jogadoresDentroDoTime[3].nome)
        } else{
            jogador04.text = jogadorVazio
        }
        jogador04.textColor = .black
        jogador04.adjustsFontSizeToFitWidth = true
        jogador04.font = numeroVit.font.withSize(24)
        jogador04.textAlignment = .center
        
        star5.contentMode = .scaleToFill
        star5.frame = CGRect(x: 600, y: 673.58, width: 81.6, height: 56.93)
        star5.image = UIImage(imageLiteralResourceName: "Star2.png")
        star5.isUserInteractionEnabled = true
        
        jogador05.frame = CGRect(x: 603, y: 673.58+56.93, width: 80, height: 50)
        
        if jogadoresDentroDoTime.count > 4{
            jogador05.text = String(jogadoresDentroDoTime[4].nome)
        } else{
            jogador05.text = jogadorVazio
        }
        jogador05.textColor = .black
        jogador05.adjustsFontSizeToFitWidth = true
        jogador05.font = numeroVit.font.withSize(24)
        jogador05.textAlignment = .center
        
        star6.contentMode = .scaleToFill
        star6.frame = CGRect(x: 600, y: 800, width: 81.6, height: 56.93)
        star6.image = UIImage(imageLiteralResourceName: "Star2.png")
        star6.isUserInteractionEnabled = true
        
        jogador06.frame = CGRect(x: 603, y: 800+56.93, width: 80, height: 50)
        
        if jogadoresDentroDoTime.count > 5{
            jogador06.text = String(jogadoresDentroDoTime[5].nome)
        } else{
            jogador06.text = jogadorVazio
        }
        jogador06.textColor = .black
        jogador06.adjustsFontSizeToFitWidth = true
        jogador06.font = numeroVit.font.withSize(24)
        jogador06.textAlignment = .center
        
        
        //Adicionando a imagem
        
        
        colorBackground.contentMode = .scaleToFill
        colorBackground.frame = CGRect(x: -10, y: 0, width: 1400, height: 1150)
        colorBackground.image = UIImage(imageLiteralResourceName: times[teste].backgroundColor)
        
        logo.contentMode = .scaleToFill
        logo.frame = CGRect(x: 794, y: 122, width: 90, height: 90)
        logo.image = UIImage(imageLiteralResourceName: times[teste].logo)
        
        
        //Adicionando a escalação
        
        linhaEscalacaoH1.contentMode = .scaleToFill
        linhaEscalacaoH1.frame = CGRect(x: 564, y: 586, width: 535, height: 1)
        linhaEscalacaoH1.image = UIImage(imageLiteralResourceName: "LinhaEscalaçãoHorizontal.png")
        
        linhaEscalacaoH2.contentMode = .scaleToFill
        linhaEscalacaoH2.frame = CGRect(x: 564, y: 618.25, width: 535, height: 1)
        linhaEscalacaoH2.image = UIImage(imageLiteralResourceName: "LinhaEscalaçãoHorizontal.png")
        
        linhaEscalacaoH3.contentMode = .scaleToFill
        linhaEscalacaoH3.frame = CGRect(x: 564, y: 648.91, width: 535, height: 1)
        linhaEscalacaoH3.image = UIImage(imageLiteralResourceName: "LinhaEscalaçãoHorizontal.png")
        
        linhaEscalacaoH4.contentMode = .scaleToFill
        linhaEscalacaoH4.frame = CGRect(x: 564, y: 929.44, width: 535, height: 1)
        linhaEscalacaoH4.image = UIImage(imageLiteralResourceName: "LinhaEscalaçãoHorizontal.png")
        
        linhaEscalacaoV1.contentMode = .scaleToFill
        linhaEscalacaoV1.frame = CGRect(x: 565, y: 586, width: 1, height: 344)
        linhaEscalacaoV1.image = UIImage(imageLiteralResourceName: "LinhaEscalaçãoVertical.png")
        
        linhaEscalacaoV2.contentMode = .scaleToFill
        linhaEscalacaoV2.frame = CGRect(x: 719, y: 586, width: 1, height: 344)
        linhaEscalacaoV2.image = UIImage(imageLiteralResourceName: "LinhaEscalaçãoVertical.png")
        
        linhaEscalacaoV3.contentMode = .scaleToFill
        linhaEscalacaoV3.frame = CGRect(x: 1098.62, y: 586, width: 1, height: 344)
        linhaEscalacaoV3.image = UIImage(imageLiteralResourceName: "LinhaEscalaçãoVertical.png")
        
        escalaçãoLabel.frame = CGRect(x: 565.26, y: 585.33, width: 533.28, height: 30.36)
        escalaçãoLabel.text = "Escalação"
        escalaçãoLabel.textColor = .black
        escalaçãoLabel.adjustsFontSizeToFitWidth = true
        escalaçãoLabel.font = escalaçãoLabel.font.withSize(30)
        escalaçãoLabel.textAlignment = .center
        
        escalaçãoLabel2.frame = CGRect(x: 565.26, y: 618.54, width: 153.72, height: 30.36)
        escalaçãoLabel2.text = "Reservas"
        escalaçãoLabel2.textColor = .black
        escalaçãoLabel2.adjustsFontSizeToFitWidth = true
        escalaçãoLabel2.font = escalaçãoLabel2.font.withSize(30)
        escalaçãoLabel2.textAlignment = .center
        
        escalaçãoLabel3.frame = CGRect(x: 718.98, y: 618.54, width: 379.56, height: 30.36)
        escalaçãoLabel3.text = "Títulares"
        escalaçãoLabel3.textColor = .black
        escalaçãoLabel3.adjustsFontSizeToFitWidth = true
        escalaçãoLabel3.font = escalaçãoLabel3.font.withSize(30)
        escalaçãoLabel3.textAlignment = .center
        
        
        //Adicionando botões
        
        buttonBack.frame = CGRect(x: 16, y: 4, width: 77, height: 77)
        buttonBack.setImage(UIImage(imageLiteralResourceName: "Back.png"), for: .normal)
        
        segmentedMercado = UISegmentedControl(items: items)
        segmentedMercado.frame = CGRect(x: 1, y: 155, width: 536, height: 40)
        segmentedMercado.backgroundColor = #colorLiteral(red: 0.8254604936, green: 0.820554316, blue: 0.8292322755, alpha: 1)
        segmentedMercado.layer.cornerRadius = 18
        let font = UIFont.systemFont(ofSize: 25)
        segmentedMercado.setTitleTextAttributes([NSAttributedString.Key.font : font], for: .normal)
        
        //view.addSubview(colorBackground)
        view.addSubview(titulo)
        view.addSubview(linhaPrincipal)
        view.addSubview(mercado)
        view.addSubview(linhaMercado)
        view.addSubview(logo)
        view.addSubview(time)
        view.addSubview(gerente)
        view.addSubview(numeroPartidas)
        view.addSubview(numeroVit)
        view.addSubview(saldo)
        view.addSubview(valorSaldo)
        view.addSubview(linhaEscalacaoH1)
        view.addSubview(linhaEscalacaoH2)
        view.addSubview(linhaEscalacaoH3)
        view.addSubview(linhaEscalacaoH4)
        view.addSubview(linhaEscalacaoV1)
        view.addSubview(linhaEscalacaoV2)
        view.addSubview(linhaEscalacaoV3)
        view.addSubview(escalaçãoLabel)
        view.addSubview(escalaçãoLabel2)
        view.addSubview(escalaçãoLabel3)
        view.addSubview(starTime)
        view.addSubview(overallTime)
        view.addSubview(star5)
        view.addSubview(jogador05)
        view.addSubview(star6)
        view.addSubview(jogador06)
        view.addSubview(star1)
        view.addSubview(jogador01)
        view.addSubview(star2)
        view.addSubview(jogador02)
        view.addSubview(star3)
        view.addSubview(jogador03)
        view.addSubview(star4)
        view.addSubview(jogador04)
        view.addSubview(buttonBack)
        view.addSubview(buttonNext)
        view.addSubview(labelMercadoTime)
        view.addSubview(labelMercadoRank)
        view.addSubview(labelMercadoNome)
        view.addSubview(labelMercadoPreço)
        view.addSubview(labelMercadoComprar)
        view.addSubview(mercadoTableView)
        view.addSubview(linhaMercado2)
        view.addSubview(linhaMercado3)
        view.addSubview(linhaMercado4)
        view.addSubview(segmentedMercado)
        view.addSubview(mercadoTableViewVenda)


        self.view = view
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 134
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == mercadoTableView{
            return jogadoresForaDoTime.count
        }else{
            return jogadoresDentroDoTime.count
        }
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "mercadoCell", for: indexPath) as? MercadoCell
            else { fatalError("The dequeued cell is not an instance of MercadoCell.")
                }
        
        if tableView == mercadoTableView{
            
            let timeCompra = jogadoresForaDoTime[indexPath.row].time
            let jogadorCompra = jogadoresForaDoTime[indexPath.row]
        
                cell.nomeLabel.text = jogadorCompra.nome
                cell.overallLabel.text = String(jogadorCompra.overall)
            if jogadorCompra.preco > times[teste].cash{
                cell.preçoLabel.textColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
                cell.buttonCar.isHidden = true
            } else{
                cell.preçoLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                cell.buttonCar.isHidden = false

            }
            cell.preçoLabel.text = String(format: "%.2f",jogadorCompra.preco)
            cell.timeImage.image = UIImage(imageLiteralResourceName: timeCompra.logo)
            cell.buttonCar.setImage (UIImage (named: "carrinho")!, for: .normal)
            cell.buttonCar.tag = indexPath.row
            cell.buttonCar.addTarget(self, action: #selector(Home.touchedButtonCar1), for: .touchUpInside)
            

        } else{
            
            let timeVenda = jogadoresDentroDoTime[indexPath.row].time
            let jogadorVenda = jogadoresDentroDoTime[indexPath.row]
            
                cell.nomeLabel.text = jogadorVenda.nome
                cell.overallLabel.text = String(jogadorVenda.overall)
                cell.preçoLabel.text = String(format: "%.2f",jogadorVenda.preco)
                cell.timeImage.image = UIImage(imageLiteralResourceName: timeVenda.logo)
                cell.buttonCar.setImage (UIImage (named: "carrinhoVenda")!, for: .normal)
                cell.buttonCar.tag = indexPath.row
                cell.buttonCar.addTarget(self, action: #selector(Home.touchedButtonCar2), for: .touchUpInside)
            
        }
                
        return cell
    }
    
    
    @objc func starPan1(_ gesture: UIPanGestureRecognizer) {
        // 1
        let translation = gesture.translation(in: view)
        
        // 2
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )
        
        // 3
        gesture.setTranslation(.zero, in: view)

        let starGrey5 = CGRect(x: 545, y: 642, width: 200, height: 150)
        let StarGrey6 = CGRect(x: 545, y: 780, width: 200, height: 150)
        
        if gesture.state == .ended {
            if starGrey5.contains(gestureView.frame) {
                if jogadoresDentroDoTime.count > 4{
                    jogadoresTransicao[0] = jogadoresDentroDoTime[4]
                    jogadoresDentroDoTime[4] = jogadoresDentroDoTime[0]
                    jogadoresDentroDoTime[0] = jogadoresTransicao[0]

                    jogador01.text = String(jogadoresDentroDoTime[0].nome)
                    jogador05.text = String(jogadoresDentroDoTime[4].nome)
                    calculamedia()
                }
            }
            if StarGrey6.contains(gestureView.frame) {
                if jogadoresDentroDoTime.count > 5{
                    jogadoresTransicao[0] = jogadoresDentroDoTime[5]
                    jogadoresDentroDoTime[5] = jogadoresDentroDoTime[0]
                    jogadoresDentroDoTime[0] = jogadoresTransicao[0]

                    jogador01.text = String(jogadoresDentroDoTime[0].nome)
                    jogador06.text = String(jogadoresDentroDoTime[5].nome)
                    calculamedia()
                }
            }
            gestureView.center = .init(x:818,y:703)
        }
    }
    
    @objc func starPan2(_ gesture: UIPanGestureRecognizer) {
        // 1
        let translation = gesture.translation(in: view)
        
        // 2
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )
        
        // 3
        gesture.setTranslation(.zero, in: view)

        let starGrey5 = CGRect(x: 545, y: 642, width: 200, height: 150)
        let StarGrey6 = CGRect(x: 545, y: 780, width: 200, height: 150)
        
        if gesture.state == .ended {
            if starGrey5.contains(gestureView.frame) {
                if jogadoresDentroDoTime.count > 4{
                    jogadoresTransicao[0] = jogadoresDentroDoTime[4]
                    jogadoresDentroDoTime[4] = jogadoresDentroDoTime[1]
                    jogadoresDentroDoTime[1] = jogadoresTransicao[0]

                    jogador02.text = String(jogadoresDentroDoTime[1].nome)
                    jogador05.text = String(jogadoresDentroDoTime[4].nome)
                    calculamedia()
                }
            }
            if StarGrey6.contains(gestureView.frame) {
                if jogadoresDentroDoTime.count > 5{
                    jogadoresTransicao[0] = jogadoresDentroDoTime[5]
                    jogadoresDentroDoTime[5] = jogadoresDentroDoTime[1]
                    jogadoresDentroDoTime[1] = jogadoresTransicao[0]

                    jogador02.text = String(jogadoresDentroDoTime[1].nome)
                    jogador06.text = String(jogadoresDentroDoTime[5].nome)
                    calculamedia()
                }
            }
            gestureView.center = .init(x:1008,y:703)
        }
    }
    
    @objc func starPan3(_ gesture: UIPanGestureRecognizer) {
        // 1
        let translation = gesture.translation(in: view)
        
        // 2
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )
        
        // 3
        gesture.setTranslation(.zero, in: view)

        let starGrey5 = CGRect(x: 545, y: 642, width: 200, height: 150)
        let StarGrey6 = CGRect(x: 545, y: 780, width: 200, height: 150)
        
        if gesture.state == .ended {
            if starGrey5.contains(gestureView.frame) {
                if jogadoresDentroDoTime.count > 4{
                    jogadoresTransicao[0] = jogadoresDentroDoTime[4]
                    jogadoresDentroDoTime[4] = jogadoresDentroDoTime[2]
                    jogadoresDentroDoTime[2] = jogadoresTransicao[0]

                    jogador03.text = String(jogadoresDentroDoTime[2].nome)
                    jogador05.text = String(jogadoresDentroDoTime[4].nome)
                    calculamedia()
                }
            }
            if StarGrey6.contains(gestureView.frame) {
                if jogadoresDentroDoTime.count > 5{
                    jogadoresTransicao[0] = jogadoresDentroDoTime[5]
                    jogadoresDentroDoTime[5] = jogadoresDentroDoTime[2]
                    jogadoresDentroDoTime[2] = jogadoresTransicao[0]


                    jogador03.text = String(jogadoresDentroDoTime[2].nome)
                    jogador06.text = String(jogadoresDentroDoTime[5].nome)
                    calculamedia()
                }
            }
            gestureView.center = .init(x:818,y:828)
        }
    }
    
    @objc func starPan4(_ gesture: UIPanGestureRecognizer) {
        // 1
        let translation = gesture.translation(in: view)
        
        // 2
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )
        
        // 3
        gesture.setTranslation(.zero, in: view)

        let starGrey5 = CGRect(x: 545, y: 642, width: 200, height: 150)
        let StarGrey6 = CGRect(x: 545, y: 780, width: 200, height: 150)
        
        if gesture.state == .ended {
            if starGrey5.contains(gestureView.frame) {
                if jogadoresDentroDoTime.count > 4{
                    jogadoresTransicao[0] = jogadoresDentroDoTime[4]
                    jogadoresDentroDoTime[4] = jogadoresDentroDoTime[3]
                    jogadoresDentroDoTime[3] = jogadoresTransicao[0]

                    jogador04.text = String(jogadoresDentroDoTime[3].nome)
                    jogador05.text = String(jogadoresDentroDoTime[4].nome)
                    calculamedia()
                }
            }
            if StarGrey6.contains(gestureView.frame) {
                if jogadoresDentroDoTime.count > 5{
                    jogadoresTransicao[0] = jogadoresDentroDoTime[5]
                    jogadoresDentroDoTime[5] = jogadoresDentroDoTime[3]
                    jogadoresDentroDoTime[3] = jogadoresTransicao[0]


                    jogador04.text = String(jogadoresDentroDoTime[3].nome)
                    jogador06.text = String(jogadoresDentroDoTime[5].nome)
                    calculamedia()
                }
            }
            gestureView.center = .init(x:1008,y:828)
        }
    }
    
    @objc func touchedButtonCar1(sender: UIButton){
        times[teste].cash = times[teste].cash - jogadoresForaDoTime[sender.tag].preco
        valorSaldo.text = " R$ " + String(format: "%.2f", times[teste].cash)
        
        jogadoresForaDoTime[sender.tag].time = times[teste]
        jogadoresDentroDoTime.append(jogadoresForaDoTime[sender.tag])
        jogadoresForaDoTime.remove(at: sender.tag)
        jogador01.text = String(jogadoresDentroDoTime[0].nome)
        
        if jogadoresDentroDoTime.count > 1{
            jogador02.text = String(jogadoresDentroDoTime[1].nome)
        } else{
            jogador02.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count > 2{
            jogador03.text = String(jogadoresDentroDoTime[2].nome)
        } else{
            jogador03.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count > 3{
            jogador04.text = String(jogadoresDentroDoTime[3].nome)
        } else{
            jogador04.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count > 4{
            jogador05.text = String(jogadoresDentroDoTime[4].nome)
        } else{
            jogador05.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count > 5{
            jogador06.text = String(jogadoresDentroDoTime[5].nome)
        } else{
            jogador06.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count < 4{
            buttonNext.isHidden = true
        } else{
            buttonNext.isHidden = false
        }
        calculamedia()
        mercadoTableView.reloadData()
        mercadoTableViewVenda.reloadData()
        
    }
    
    @objc func touchedButtonCar2(sender: UIButton){
        times[teste].cash = times[teste].cash + jogadoresDentroDoTime[sender.tag].preco
        valorSaldo.text = " R$ " + String(format: "%.2f", times[teste].cash)
        
        while jogadoresDentroDoTime[sender.tag].time.nome == times[teste].nome {
            jogadoresDentroDoTime[sender.tag].time = times[Int.random(in: 0...4)]
        }
        
        jogadoresForaDoTime.append(jogadoresDentroDoTime[sender.tag])
        jogadoresDentroDoTime.remove(at: sender.tag)
        
        
        if jogadoresDentroDoTime.count > 0{
            jogador01.text = String(jogadoresDentroDoTime[0].nome)
        } else{
            jogador01.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count > 1{
            jogador02.text = String(jogadoresDentroDoTime[1].nome)
        } else{
            jogador02.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count > 2{
            jogador03.text = String(jogadoresDentroDoTime[2].nome)
        } else{
            jogador03.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count > 3{
            jogador04.text = String(jogadoresDentroDoTime[3].nome)
        } else{
            jogador04.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count > 4{
            jogador05.text = String(jogadoresDentroDoTime[4].nome)
        } else{
            jogador05.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count > 5{
            jogador06.text = String(jogadoresDentroDoTime[5].nome)
        } else{
            jogador06.text = jogadorVazio
        }
        
        if jogadoresDentroDoTime.count < 4{
            buttonNext.isHidden = true
        } else{
            buttonNext.isHidden = false
        }
        
        calculamedia()
        mercadoTableView.reloadData()
        mercadoTableViewVenda.reloadData()

    }
    
    override public func viewDidLoad() {
        
        segmentedMercado.selectedSegmentIndex = 0
        mercadoTableViewVenda.isHidden = true
        buttonBack.addTarget(self, action: #selector(Home.touchedButtonBack), for: .touchUpInside)
        buttonNext.addTarget(self, action: #selector(Home.touchedButtonNext), for: .touchUpInside)
        segmentedMercado.addTarget(self, action: #selector(Home.changeSegmentMercado), for: .valueChanged)
    }
    
        @IBAction func changeSegmentMercado(_ sender: UISegmentedControl){
        
        switch sender.selectedSegmentIndex {
            
        case 0:
            
            mercadoTableView.isHidden = false
            mercadoTableViewVenda.isHidden = true

            
        default:
            
            mercadoTableView.isHidden = true
            mercadoTableViewVenda.isHidden = false

            }
        }
    
        @IBAction func touchedButtonBack(){
            //print("Retorna para a página anterior")
            navigationController?.popViewController(animated: true)
        }
    
        @IBAction func touchedButtonNext(){
            var simulacao: Int = 0
            simulacao = Int.random(in: 150...mediaOverall*5)
            if simulacao > 230{
                times[teste].cash = times[teste].cash + 400
                nVit = nVit + 1
            } else{
                if times[teste].cash >= 200{
                times[teste].cash = times[teste].cash - 200
                } else{
                    times[teste].cash = 0.0
                }
            }
            nPartidas = nPartidas + 1
            numeroPartidas.text = "Número de partidas: " + String(format: "%i",nPartidas)
            numeroVit.text = "Número de vitórias: " + String(format: "%i",nVit)
            valorSaldo.text = " R$ " + String(format: "%.2f", times[teste].cash)
            mercadoTableView.reloadData()
            mercadoTableViewVenda.reloadData()
        }
    
    public func calculamedia(){
        
        var y:Int = 0
        mediaOverall = 0
        
        if jogadoresDentroDoTime.count > 3{
            
            while y < 4 {
                
                mediaOverall = mediaOverall + jogadoresDentroDoTime[y].overall
                
                y = y + 1
            }
            
            mediaOverall = mediaOverall/4
        } else{
            mediaOverall = 0
        }
        overallTime.text = String(mediaOverall)
    }
}

let menuPrincipalViewController = MenuPrincipalViewController(screenType: .ipadPro12_9, isPortrait: false)
let menuNovoJogo_Nome = MenuNovoJogo_Nome(screenType: .ipadPro12_9, isPortrait: false)
let menuNovoJogo_Times = MenuNovoJogo_Times(screenType: .ipadPro12_9, isPortrait: false)
let home = Home(screenType: .ipadPro12_9, isPortrait: false)

