//
//  PlanoDeEstudosViewController.swift
//  PlanoDeEstudosApp
//
//  Created by Raul Ribeiro on 26/10/22.
//

import UIKit

class PlanoDeEstudosViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var areaTextField: UITextField!
    @IBOutlet weak var statusTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func exibirConfirmacaoEnvioMaterial() {
        let title = "Quase lá!"
        let message = "Antes de enviarmos, por favor, revise seus dados:\n\nNome: \(nomeTextField.text!)\nEmail: \(emailTextField.text!)\nÁrea de Atuação: \(areaTextField.text!)\nStatus Profissional: \(statusTextField.text!)"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: exibirMensagemConcluido))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func exibirMensagemConcluido(_ action: UIAlertAction) {
        let title = "Feito!"
        let message = "Verifique seu email e tenha acesso ao documento."
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func botaoReceberMaterialPressionado(_ sender: UIButton) {
        exibirConfirmacaoEnvioMaterial()
    }
}
