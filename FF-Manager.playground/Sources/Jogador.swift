import Foundation
import PlaygroundSupport

public class jogador {
    var nomeJogador: String
    var overall: Int
    var time: String

    public init (nomeJogador: String, overall: Int, time: String){
        self.nomeJogador = nomeJogador
        self.overall = overall
        self.time = time
    }
}
