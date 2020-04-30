import Foundation

public class TimeFF {
    
   public var backgroundColor: String
   public var cash: Float = 3200.0
   public var nome: String
   public var logo: String
   public var escolhido: Bool = false
    
    public init(nome: String) {
        
        self.nome = nome
        if nome.split(separator: " ").count > 1{
            self.backgroundColor = "cor\(nome.split(separator: " ")[0])\(nome.split(separator: " ")[1]).png"
            self.logo = "\(nome.split(separator: " ")[0])\(nome.split(separator: " ")[1]).png"
        } else{
            self.backgroundColor = "cor\(nome).png"
            self.logo = "\(nome).png"
        }
        
    }
    
}
