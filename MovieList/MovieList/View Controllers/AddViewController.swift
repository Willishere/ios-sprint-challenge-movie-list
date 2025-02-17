//
//  AddViewController.swift
//  Movie List
//
//  Created by William Chen on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    var movieController: MovieController?

    @IBOutlet weak var textField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addNewMovie(_ sender: UIBarButtonItem) {
        guard let title = textField.text, textField.text != "" else {return}
        let newMovie = Movie(title: title)
        movieController?.movies.append(newMovie)
        navigationController?.popViewController(animated: true)
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
