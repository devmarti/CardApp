//
//  UpLoadCard1ViewControllar.swift
//  CardAppFinal
//
//  Created by APPS2T on 7/2/22.


import UIKit

class UpLoadCard1ViewController: UIViewController {
    
    @IBOutlet weak var imagenLogoUp: UIImageView!
    @IBOutlet weak var nameSegmentedControllerUp: UISegmentedControl!
    @IBOutlet weak var sellCardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameSegmentedControllerUp.apportionsSegmentWidthsByContent.description
    }
    
    @IBAction func segementedControlchangedUp( sender: UISegmentedControl){
        
        switch  nameSegmentedControllerUp.selectedSegmentIndex {
        case 0:
            imagenLogoUp.image = UIImage(named: "Pokémon.svg")
        case 1:
            imagenLogoUp.image = UIImage(named: "Magic-logo.svg")
        case 3:
            imagenLogoUp.image = UIImage(named: "yu-gi-oh!.png")
        default:
            imagenLogoUp.image = nil
        }
    }
    @IBAction func sellCardButton(_ sender: Any) {
        if let navCon = storyboard?.instantiateViewController(identifier: "ProfileIdentifier") as? PerfilViewController{
            
            navCon.modalPresentationStyle = .currentContext
            navCon.modalTransitionStyle = .crossDissolve
            
            present(navCon, animated: true, completion: nil)
        }
    }
}
