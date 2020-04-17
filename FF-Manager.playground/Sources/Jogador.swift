import Foundation
import PlaygroundSupport
import UIKit

public class Jogador {
   public var nome: String
   public var overall: Int
   public var time: TimeFF
   public var preco: Float
    

    public init (nome: String, overall: Int, time: TimeFF, preco: Float){
        self.nome = nome
        self.overall = overall
        self.time = time
        self.preco = preco
        
    }
    
}

public class MercadoCell: UITableViewCell {
    
   public var nomeLabel = UILabel()
   public var overallLabel = UILabel()
   public var preçoLabel = UILabel()
   public var timeImage = UIImageView()
   public var buttonCar = UIButton()
    

    public override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        
        timeImage.frame = CGRect(x: 20, y: 40, width: 65, height: 65)
        timeImage.contentMode = .scaleToFill
        buttonCar.frame = CGRect(x: 471, y: 58, width: 41, height: 38)
        nomeLabel.frame = CGRect(x: 185, y: 20, width: 537.5, height: 114)
        nomeLabel.font = nomeLabel.font.withSize(27)
        overallLabel.frame = CGRect(x: 107, y: 20, width: 537.5, height: 114)
        overallLabel.font = overallLabel.font.withSize(27)
        preçoLabel.frame = CGRect(x: 312, y: 20, width: 537.5, height: 114)
        preçoLabel.font = preçoLabel.font.withSize(27)
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
                
        //self.backgroundColor = .clear
        self.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.1101776541)
        self.addSubview(nomeLabel)
        self.addSubview(overallLabel)
        self.addSubview(preçoLabel)
        self.addSubview(timeImage)
        self.addSubview(buttonCar)
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
