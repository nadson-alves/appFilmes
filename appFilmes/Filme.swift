//
//  Filme.swift
//  appFilmes
//
//  Created by Nadson on 06/09/26.

import UIKit

class Filme {

    // Dados que cada filme vai possuir
    var titulo: String!
    var descricao: String!
    var descricaoLonga: String!
    var imagem: UIImage!

    // Inicializa um filme recebendo seus dados
    init(titulo: String, descricao: String, descricaoLonga: String, imagem: UIImage?) {
        self.titulo = titulo
        self.descricao = descricao
        self.descricaoLonga = descricaoLonga
        self.imagem = imagem
    }

}
