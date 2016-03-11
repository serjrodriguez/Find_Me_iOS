//
//  RegistroViewController.swift
//  Find Me App
//
//  Created by Sergio Rodriguez on 3/10/16.
//  Copyright © 2016 Sergio Rodriguez. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {
    
    
    @IBOutlet weak var txtNombreUsuarioRegistro: UITextField!
    
    @IBOutlet weak var txtEmailRegistro: UITextField!
    
    @IBOutlet weak var txtPasswordRegistro: UITextField!
    
    @IBOutlet weak var txtRepitePassword: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCrearCuenta(sender: UIButton) {
        //Codigo Para el Registro de Usuarios
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
