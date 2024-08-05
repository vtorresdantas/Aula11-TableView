//
//  ViewController.swift
//  Tableview
//
//  Created by Usuário Convidado on 05/08/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var animal = ["Urso", "Leao", "Rino", "Girafa", "Ele"]
    
    var foto = ["urso", "leao", "rino", "girafa", "ele"]

    @IBOutlet weak var minhaTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //conexao via codigo
        minhaTableView.dataSource = self
        minhaTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    //retorna quantas secoes tera nossa lista
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //retorna o numero de linhas da lista
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    //retorna uma celula da tabela para o indice informado
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        //celula.textLabel?.text = "item numero \(indexPath.row)"
        celula.textLabel?.text = "\(animal[indexPath.row])"
        //celula.imageView?.image = UIImage(named: "corinthians.png")
        celula.imageView?.image = UIImage(named: foto[indexPath.row])
        
        return celula
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let msg = "Voce selecionou o animal \(animal[indexPath.row])"
        
        let alerta = UIAlertController(title: "Aviso",
                                        message: msg,
                                        preferredStyle: UIAlertController.Style.alert)
    
    
        alerta.addAction(UIAlertAction(title: "OK",
                                       style: UIAlertAction.Style.default,
                                       handler: nil
                                       ))
        
        present(alerta, animated: true, completion: nil)
    }
    
    

}

