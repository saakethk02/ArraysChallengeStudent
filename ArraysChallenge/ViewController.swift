//
//  ViewController.swift
//  ArraysChallenge
//
//  Copyright (c) 2018 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!

    @IBOutlet weak var stretch2Label: UILabel!
    /***************************************************
    * Start Your Code Here For MVP - Part 1
    ***************************************************/
    var myFavoriteMovies = ["Toy Story 1", "Toy Story 2", "Toy Story 3", "Toy Story 4"]

    /***************************************************
    * End Your Code Here For MVP - Part 1
    ***************************************************/

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /***************************************************
        * Start Your Code Here For MVP - Part 2
        ***************************************************/
        var numberOfMovies = myFavoriteMovies.count


        /***************************************************
        * End Your Code Here For MVP - Part 2
        ***************************************************/

        return numberOfMovies
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        let index = indexPath.row
        /***************************************************
        * Start Your Code Here For MVP - Part 3
        ***************************************************/

        var currentStudent = myFavoriteMovies[index]

        /***************************************************
        * End Your Code Here For MVP - Part 3
        ***************************************************/

        currentCell.textLabel?.text = currentStudent
        return currentCell

    }

    @IBAction func onStretch1Pressed(_ sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #1
        ***************************************************/
        myFavoriteMovies[1] = "Toy Story Remastered On Digital"
        myFavoriteMovies.append("Toy Story Remastered On Google Glass")
        myFavoriteMovies.insert("Toy Story Behind The Scenes", at: 2)


        /***************************************************
        * End Your Code Here For Stretch #1
        ***************************************************/

        myTableView.reloadData()
    }
    @IBAction func onStretch2Pressed(_ sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #2
        ***************************************************/
        if(myFavoriteMovies[0] != nil)
        {
        myFavoriteMovies.remove(at: 0)
        }
        if(myFavoriteMovies[1] != nil)
        {
        myFavoriteMovies.remove(at: 1)
        }
        let myAllTimeFavorite = myFavoriteMovies.first
        /***************************************************
        * End Your Code Here For Stretch #2
        ***************************************************/
        myTableView.reloadData()
        //Uncomment line below for stretch #2
        stretch2Label.text = myAllTimeFavorite
    }
}

