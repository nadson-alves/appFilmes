//
//  Detalhesfilme.swift
//  appFilmes
//
//  Created by Nadson on 09/09/26.
//
import Foundation
import UIKit

class Detalhesfilme: UIViewController {

    // Recebe o filme enviado pelo ViewController
    var filme: Filme!

    @IBOutlet weak var imagemComan: UIImageView!
    @IBOutlet weak var tituloComentario: UILabel!
    @IBOutlet weak var comentarioComan: UILabel!

    override func viewDidLoad() {

        super.viewDidLoad()

        // Preenche a tela com os dados do filme recebido
        imagemComan.image = filme.imagem
        tituloComentario.text = filme.titulo

        // Aqui usamos a descrição LONGA
        comentarioComan.text = filme.descricaoLonga
    }

}
