//
//  LoginViewController.swift
//  Find Me App
//
//  Created by Sergio Rodriguez on 3/10/16.
//  Copyright © 2016 Sergio Rodriguez. All rights reserved.
//

import UIKit
import Foundation

class LoginViewController: UIViewController{
    
    @IBOutlet weak var pruebaconeccion: UITableView!

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    //Properties
    
    var feedItems: NSArray = NSArray()
    var users : UsersModel = UsersModel()
    @IBOutlet weak var listTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set delegates and initialize homeModel
        
//        self.listTableView.delegate = self
//        self.listTableView.dataSource = self
//        
//        let homeModel = HomeModel()
//        homeModel.delegate = self
//        homeModel.downloadItems()
        
    }
    
//    func itemsDownloaded(items: NSArray) {
//        
//        feedItems = items
//        self.listTableView.reloadData()
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // Return the number of feed items
//        return feedItems.count
//        
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        // Retrieve cell
//        let cellIdentifier: String = "BasicCell"
//        let myCell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)!
//        // Get the location to be shown
//        let item: UsersModel = feedItems[indexPath.row] as! UsersModel
//        // Get references to labels of cell
//        myCell.textLabel!.text = item.email
//        
//        return myCell
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnIniciarSesionLogin(sender: UIButton) {
        //Codigo de autenticacion
    }

}
