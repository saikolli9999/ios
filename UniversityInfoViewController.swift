//
//  UniversityInfoViewController.swift
//  Kolli_UniversityApp
//
//  Created by Kolli,Sai Kumar on 4/18/23.
//

import UIKit

class UniversityInfoViewController: UIViewController {
    
    
    @IBOutlet weak var universityImageViewOutlet: UIImageView!
    
    @IBOutlet weak var universityInfoOutlet: UITextView!
    var university : UniversityList?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        universityImageViewOutlet.image = UIImage(named: university!.collegeImage)
        self.title = university?.collegeName
        universityImageViewOutlet.frame.origin.x = view.frame.maxX

        UIView.animate(withDuration: 1, animations: {
            //Move all the compoenets to the center and disable show button
            self.universityImageViewOutlet.center.x = self.view.center.x
        })

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showInfoAction(_ sender: Any) {
        
        universityInfoOutlet.text = university?.collegeInfo
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
