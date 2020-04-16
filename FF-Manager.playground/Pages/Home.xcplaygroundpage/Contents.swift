//: [Previous](@previous)

//: A UIKit based Playground for presenting user interface
  
//as variáveis timeSelected e logoTime vão ser definidas pelo MenoNovoJogo_Times
//a variável

import UIKit
import PlaygroundSupport

class MercadoTableViewCell: UITableViewCell {
    
    var imagemTest = UIImageView()
    var imagemCarrinho = UIButton()
    var textTest = UILabel()
    var textTest2 = UILabel()
    var textTest3 = UILabel()
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imagemTest.frame = CGRect(x: 20, y: 40, width: 65, height: 65)
        imagemTest.contentMode = .scaleToFill
        imagemCarrinho.frame = CGRect(x: 471, y: 58, width: 41, height: 38)
        textTest.frame = CGRect(x: 155, y: 20, width: 537.5, height: 114)
        textTest.font = textTest.font.withSize(27)
        textTest2.frame = CGRect(x: 107, y: 20, width: 537.5, height: 114)
        textTest2.font = textTest2.font.withSize(27)
        textTest3.frame = CGRect(x: 285, y: 20, width: 537.5, height: 114)
        textTest3.font = textTest3.font.withSize(27)
        self.backgroundColor = .clear
        self.addSubview(textTest)
        self.addSubview(textTest2)
        self.addSubview(textTest3)
        self.addSubview(imagemTest)
        self.addSubview(imagemCarrinho)
        self.selectionStyle = .none

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class Home : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
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
    var segmentedMercado = UISegmentedControl()
    
    
    let items = ["Comprar", "Vender"]

    
    //Declarando variáveis
    
    var timeSelected:String = "Nome time"
    var nPartidas:Int = 0
    var nome:String = "Nome"
    var nVit:Int = 0
    var cash: Float = 300000.00
    var logoTime:String = "VivoKeyd.png"
    
    var mercadoTableView = UITableView()
    var nomeJogadorCompra:[String] = ["Nobru", "Lukas", "Peu", "Will", "Lukastd", "Fixa", " Bradoock", "Vinizx", "Moreira", "Raposo" ]
    var rankJogadorCompra:[Int] = [63, 62, 61, 58, 57, 55, 53, 53, 52, 50]
    var preçoJogadorCompra:[Float] = [3500.0, 3200.0, 3150.0, 3100.0, 3060.0, 3000.0, 2950.0, 2930.0, 2880.0, 2800.0]
    var timeJogadorCompra: [String] = [ "TeamLiquid.png", "Intz.png", "TeamLiquid.png", "Loud.png", "TeamLiquid.png", "Corinthias.png", "Loud.png", "Loud.png", "Intz.png", "TeamLiquid.png"]
    
    var nomeJogadorVenda:[String] = ["Lukastd", "Fixa", " Bradoock", "Vinizx", "Moreira", "Raposo"]
    var rankJogadorVenda:[Int] = [57, 55, 53, 53, 52, 50]
    var preçoJogadorVenda:[Float] = [3000.0, 2890.0, 2850.0, 2750.0, 2725.0, 2635.0]
    var timeJogadorVenda: [String] = ["TeamLiquid.png", "Intz.png", "TeamLiquid.png", "Loud.png", "TeamLiquid.png", "Corinthias.png", "Loud.png", "Loud.png", "Intz.png", "TeamLiquid.png"]
    
    var mercadoTableViewVenda = UITableView()
    
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9529411765, blue: 0.9098039216, alpha: 1)
        
       //Adicionando TableView
        
        mercadoTableView.frame = CGRect(x: 0, y: 245, width: 537.5, height: 800)
        mercadoTableView.register(MercadoTableViewCell.self, forCellReuseIdentifier: "mercadoCell")
        mercadoTableView.delegate = self
        mercadoTableView.dataSource = self
        mercadoTableView.isScrollEnabled = true
        mercadoTableView.backgroundColor = .clear
        
        mercadoTableViewVenda.frame = CGRect(x: 0, y: 245, width: 537.5, height: 800)
        mercadoTableViewVenda.register(MercadoTableViewCell.self, forCellReuseIdentifier: "mercadoCell")
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
        time.text = timeSelected
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
        
        //Adicionando o botão SegmentMercado
        
        segmentedMercado = UISegmentedControl(items: items)
        segmentedMercado.frame = CGRect(x: 1, y: 155, width: 536, height: 40)
        segmentedMercado.backgroundColor = #colorLiteral(red: 0.8254604936, green: 0.820554316, blue: 0.8292322755, alpha: 1)
        segmentedMercado.layer.cornerRadius = 18
        let font = UIFont.systemFont(ofSize: 25)
        segmentedMercado.setTitleTextAttributes([NSAttributedString.Key.font : font], for: .normal)

        
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
            return nomeJogadorCompra.count
        }else{
            return nomeJogadorVenda.count
        }
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "mercadoCell", for: indexPath) as? MercadoTableViewCell
            else { fatalError("The dequeued cell is not an instance of MercadoTableViewCell.")
                }
            if tableView == mercadoTableView{
                
                cell.textTest.text = nomeJogadorCompra[indexPath.row]
                cell.textTest2.text = String(format: "%i",rankJogadorCompra[indexPath.row])
                cell.textTest3.text = " R$ " + String(format: "%.2f", preçoJogadorCompra[indexPath.row])
                cell.imagemTest.image = UIImage(imageLiteralResourceName: timeJogadorCompra[indexPath.row])
                cell.imagemCarrinho.setImage(UIImage(imageLiteralResourceName: "carrinho.png"), for: .normal)
        
            }
            else{
                cell.textTest.text = nomeJogadorVenda[indexPath.row]
                cell.textTest2.text = String(format: "%i",rankJogadorVenda[indexPath.row])
                cell.textTest3.text = " R$ " + String(format: "%.2f", preçoJogadorVenda[indexPath.row])
                //aqui embaixo eu tenho q colocar a imagem do time q o usuário selecionou
                cell.imagemTest.image = UIImage(imageLiteralResourceName: logoTime)
                cell.imagemCarrinho.setImage(UIImage(imageLiteralResourceName: "carrinhoVenda.png"), for: .normal)
        
                }
        
        return cell
    }
    
    override func viewDidLoad() {
        
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
