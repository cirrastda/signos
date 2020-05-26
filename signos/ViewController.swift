//
//  ViewController.swift
//  signos
//
//  Created by Anderson Matuchenko on 26/05/20.
//  Copyright © 2020 Anderson Matuchenko. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    //@IBOutlet weak var cellSigno: UITableViewCell!
    var dados:[(signo: String, descricao: String)] = [
        (signo: "Aries", descricao: "Primeiro Guardião do Santuário, o cavaleiro de áries é um guerreiro racional. Cavaleiro atual: Mu"),
        (signo: "Touro", descricao: "O cavaleiro de Touro é um guerreiro com um forte senso de justiça. Normalmente é alguém de grande força física e forte poder de defesa. Cavaleiro atual: Aldebaran"),
        (signo: "Gemeos", descricao: "Um guerreiro sempre afetado por distúrbios de personalidade. De um lado justo e bondoso, de outro, ambicioso e ardiloso. Cavaleiro atual: Saga"),
        (signo: "Câncer", descricao: "O guerreiro mais controverso dentre os defensores de Atena, o Cavaleiro de Câncer é sempre alguém que tem ligaão direta com o Mundo dos Espíritos. Cavaleiro atual: Deathmask"),
        (signo: "Leão", descricao: "Um guerreiro sempre muito forte, justo e leal, o Cavaleiro de Leão tem as presas capazes de mudar o destino da humanidade. É aquele que carrega a provação divina. Cavaleiro atual: Aiolia"),
        (signo: "Virgem", descricao: "O Cavaleiro mais próximo de Deus, o Cavaleiro de Virgem é sempre alguém sereno e de forte poder mental. Cavaleiro Atual: Shaka"),
        (signo: "Libra", descricao: "O mais equilibrado entre os cavaleiros, o Cavaleiro de Libra possui o poder do julgamento e apenas ele pode julgar se os cavaleiros podem ou não usar armas em uma batalha. Cavaleiro atual: Dohko"),
        (signo: "Escorpião", descricao: "O detentor do veneno do escorpião é normalmente um guerreiro orgulhoso e impulsivo. Controla um veneno letal. Cavaleiro Atual: Milo"),
        (signo: "Sagitário", descricao: "O detentor da flecha da justiça é aquele com maior senso de justiça entre os cavaleiros. Sua flecha normalmente é aquela que direciona o caminho a se seguir. Cavaleiro atual: Aiolos"),
        (signo: "Capricórnio", descricao: "O Cavaleiro mais leal a Atena, é assim que é conhecido o Cavaleiro de Capricório, sempre estando ao laado da deusa. É o detentor da famosa Excalibur. Cavaleiro atual: Shura"),
        (signo: "Aquário", descricao: "O homem que controla o gelo, o Cavaleiro de Aquário é normalmente alguém frio e controlador. Cavaleiro atual: Camus"),
        (signo: "Peixes", descricao: "O guerreiro de sangue venenoso. É assim que o Cavaleiro de Peixes é sempre conhecido, por controlar suas rosas venenosas, que refletem o próprio sangue do cavaleiro. Cavaleiro atual: Afrodite")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellSigno = "cellSigno";
        let celula = tableView.dequeueReusableCell(withIdentifier: cellSigno, for:indexPath)
        print(dados[indexPath.row].signo)
        celula.textLabel?.text = dados[indexPath.row].signo
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alerta = UIAlertController(title: dados[indexPath.row].signo, message: dados[indexPath.row].descricao, preferredStyle: UIAlertController.Style.alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alerta, animated: true)
    }
}

