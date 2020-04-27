import Foundation
import PlaygroundSupport
import UIKit

public class StatusCell: UITableViewCell {
    
   public var numeroLabel = UILabel()
   public var resultadoLabel = UILabel()
    

    public override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        
        numeroLabel.frame = CGRect(x: 20, y: 30, width: 65, height: 65)
        numeroLabel.font = numeroLabel.font.withSize(27)
        resultadoLabel.frame = CGRect(x: 185, y: 15, width: 537.5, height: 114)
        resultadoLabel.font = resultadoLabel.font.withSize(30)
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
                
        //self.backgroundColor = .clear
        self.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.1101776541)
        self.addSubview(numeroLabel)
        self.addSubview(resultadoLabel)
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
