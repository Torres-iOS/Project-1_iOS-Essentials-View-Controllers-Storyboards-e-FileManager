//
//  DetailViewController.swift
//  Project1
//
//  Created by Matheus  Torres on 10/06/24.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    
    override func viewDidLoad() {
        //Não deixa os titulos ficarem grandes
        navigationItem.largeTitleDisplayMode = .never

        title = selectedImage
        super.viewDidLoad()
        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //Diga ao meu tipo de dados pai que esses métodos foram chamados
        super.viewWillAppear(animated)
        //se algo nao estiver dentro do navigation controller, o hidesBarsOnTap nao faz nada
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        //Diga ao meu tipo de dados pai que esses métodos foram chamados
        super.viewWillDisappear(animated)
        //se algo nao estiver dentro do navigation controller, o hidesBarsOnTap nao faz nada
        navigationController?.hidesBarsOnTap = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
