//
//  FilmeCelula.swift
//  appFilmes
//
//  Created by Nadson on 07/09/26.
//
import UIKit

class FilmeCelula: UITableViewCell {

    // Imagem do filme
    @IBOutlet weak var imagemFilme: UIImageView!

    // Título do filme
    @IBOutlet weak var nomeFilme: UILabel!

    // Descrição curta mostrada na lista
    @IBOutlet weak var comentarioFilme: UILabel!

}
