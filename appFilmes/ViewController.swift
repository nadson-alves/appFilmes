import UIKit

class ViewController: UITableViewController {

    // Array que vai armazenar todos os filmes
    var filmes: [Filme] = []

    override func viewDidLoad() {

        super.viewDidLoad()

        // Cria o primeiro filme e adiciona ao array
        var filme = Filme(
            titulo: "007 - Spectre",
            descricao: "James Bond enfrenta uma organização secreta.",
            descricaoLonga: "James Bond recebe uma mensagem misteriosa que o leva a investigar uma organização criminosa conhecida como SPECTRE. Durante a missão, ele descobre ligações com acontecimentos do seu passado e precisa enfrentar um inimigo poderoso.",
            imagem: UIImage(named: "filme1")
        )

        filmes.append(filme)

        // Cria o segundo filme
        filme = Filme(
            titulo: "Star Wars-Guerra nas Estrelas",
            descricao: "Um jovem herói se junta à luta contra o Império.",
            descricaoLonga: "Luke Skywalker embarca em uma grande aventura depois de descobrir que possui uma ligação especial com a Força. Ao lado de aliados como Han Solo e Princesa Leia, ele enfrenta o poderoso Império Galáctico.",
            imagem: UIImage(named: "filme2")
        )

        filmes.append(filme)

        // Cria o terceiro filme
        filme = Filme(
            titulo: "Impacto Mortal",
            descricao: "Um policial enfrenta uma perigosa ameaça.",
            descricaoLonga: "Um policial se envolve em uma investigação que o coloca diante de uma ameaça extremamente perigosa. Enquanto tenta descobrir a verdade, ele precisa enfrentar criminosos e proteger aqueles que estão ao seu redor.",
            imagem: UIImage(named: "filme3")
        )

        filmes.append(filme)

        // Cria o quarto filme
        filme = Filme(
            titulo: "Deadpool",
            descricao: "Um mercenário irreverente busca vingança.",
            descricaoLonga: "Wade Wilson ganha habilidades especiais após ser submetido a um experimento que muda completamente sua vida. Usando seus novos poderes e seu humor irreverente, ele parte em busca de vingança.",
            imagem: UIImage(named: "filme4")
        )

        filmes.append(filme)

        // Cria o quinto filme
        filme = Filme(
            titulo: "O Regresso",
            descricao: "Um homem luta para sobreviver após ser abandonado.",
            descricaoLonga: "Depois de ser brutalmente atacado e deixado para morrer, Hugh Glass precisa enfrentar uma natureza selvagem e condições extremas para sobreviver. Movido pela vontade de reencontrar aqueles que o traíram, ele inicia uma difícil jornada.",
            imagem: UIImage(named: "filme5")
        )

        filmes.append(filme)

        // Cria o sexto filme
        filme = Filme(
            titulo: "A Herdeira",
            descricao: "Uma jovem descobre segredos que podem mudar sua vida.",
            descricaoLonga: "Uma jovem herdeira começa a descobrir que sua família esconde segredos importantes. Conforme investiga seu passado, percebe que a herança recebida pode estar ligada a acontecimentos perigosos.",
            imagem: UIImage(named: "filme6")
        )

        filmes.append(filme)

        // Cria o sétimo filme
        filme = Filme(
            titulo: "Cacadores de Emocao",
            descricao: "Um agente se infiltra em um grupo de esportistas radicais.",
            descricaoLonga: "Um jovem agente do FBI recebe a missão de investigar uma série de roubos cometidos por um grupo de criminosos que pratica esportes radicais. Ao se infiltrar no grupo, ele começa a se envolver cada vez mais com aquele estilo de vida.",
            imagem: UIImage(named: "filme7")
        )

        filmes.append(filme)

        // Cria o oitavo filme
        filme = Filme(
            titulo: "Regresso do Mal",
            descricao: "Uma ameaça misteriosa retorna para atormentar uma família.",
            descricaoLonga: "Uma família começa a enfrentar acontecimentos estranhos depois que uma antiga ameaça retorna. Enquanto tenta descobrir a origem do problema, percebe que o passado pode esconder um perigo muito maior.",
            imagem: UIImage(named: "filme8")
        )

        filmes.append(filme)

        // Cria o nono filme
        filme = Filme(
            titulo: "Tarzan",
            descricao: "Um homem criado na selva precisa proteger seu lar.",
            descricaoLonga: "Tarzan deixou para trás a vida na selva para viver entre os humanos, mas acaba sendo obrigado a retornar ao lugar onde cresceu. Ao perceber que sua antiga casa está ameaçada, precisa enfrentar seus inimigos e proteger aqueles que ama.",
            imagem: UIImage(named: "filme9")
        )

        filmes.append(filme)

        // Cria o décimo filme
        filme = Filme(
            titulo: "Hardcore",
            descricao: "Um homem desperta sem memória e precisa descobrir quem é.",
            descricaoLonga: "Depois de acordar sem lembrar de seu passado, um homem descobre que está envolvido em uma situação perigosa. Sem saber em quem confiar, precisa enfrentar diversos inimigos enquanto tenta descobrir sua verdadeira identidade.",
            imagem: UIImage(named: "filme10")
        )

        filmes.append(filme)

    }

    // Informa quantas linhas a TableView terá
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {

        return filmes.count
    }

    // Define a quantidade de seções da TableView
    override func numberOfSections(
        in tableView: UITableView
    ) -> Int {

        return 1
    }

    // Preenche cada célula com os dados do filme
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {

        // Pega o filme correspondente à linha selecionada
        let filme = filmes[indexPath.row]

        // Reutiliza a célula criada no Storyboard
        let celula = tableView.dequeueReusableCell(
            withIdentifier: "Celula",
            for: indexPath
        ) as! FilmeCelula

        // Passa os dados do filme para os elementos da célula
        celula.imagemFilme.image = filme.imagem
        celula.nomeFilme.text = filme.titulo
        celula.comentarioFilme.text = filme.descricao

        /*celula.imagemFilme.layer.cornerRadius = 42
        celula.imagemFilme.clipsToBounds = true*/

        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.imagem*/

        return celula
    }

    // Envia o filme selecionado para a tela de detalhes
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detalhes" {

            // Descobre qual linha da TableView foi selecionada
            if let indexPath = tableView.indexPathForSelectedRow {

                let filme = filmes[indexPath.row]

                // Pega a tela de destino
                let destino = segue.destination as! Detalhesfilme

                // Envia o filme selecionado para a tela de detalhes
                destino.filme = filme
            }
        }
    }

}
