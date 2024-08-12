//
//  ViewController.swift
//  Exemplo1_TableView
//
//  Created by Usuário Convidado on 05/08/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var minhaTableView: UITableView!
    var animal = ["Urso", "Leão", "Rinoceronte", "Girafa", "Elefante"]
    var foto = ["urso", "leao", "rino", "girafa", "ele"]
    var continente = ["Europa", "America do Sul", "Pangeia", "Africa", "Asia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minhaTableView.dataSource = self
        minhaTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        //celula.textLabel?.text = "Item número \(indexPath.row)"
        celula.textLabel?.text = animal[indexPath.row]
        celula.imageView?.image = UIImage(named: foto[indexPath.row])
        celula.detailTextLabel?.text = continente[indexPath.row]
        celula.accessoryType = .detailButton
        //celula.imageView?.image = UIImage(named: "corinthians.jpg")
        return celula
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alerta = UIAlertController(
            title: "Aviso",
            message: "Você selecionou a posição \(indexPath.row)",
            preferredStyle: UIAlertController.Style.alert)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default))
        
        present(alerta, animated: true)
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let rodape = UIImageView(image: UIImage(named: "rodape"))
        
        return rodape
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cabecalho = UIImageView(image: UIImage(named: "cabecalho"))
        
        return cabecalho
        
        
       
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
        let alerta = UIAlertController(
            title: "Atencao",
            message: "Este codigo ocorre quando clica no acessorio",
            preferredStyle: UIAlertController.Style.actionSheet)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default))
        
        present(alerta, animated: true)
    }
    
    

}

