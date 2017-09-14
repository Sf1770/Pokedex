//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Sabrina Fletcher on 9/9/17.
//  Copyright © 2017 Sabrina Fletcher. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    
    var pokemon: Pokemon!

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseAttackLbl: UILabel!
    @IBOutlet weak var nextEvoDescriptionLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var futureEvoImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name.capitalized
        let image = UIImage(named: "\(pokemon.pokedexID)")
        
        mainImg.image = image
        currentEvoImg.image = image
        pokedexLbl.text = "\(pokemon.pokedexID)"
        
        
        pokemon.downloadPokemonDetails {
            
            print("Did arrive here")
            
            //Whatever we write will only be called after the netwrok call is complete.
            self.updateUI()
            
        }

        // Do any additional setup after loading the view.
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }

    
    func updateUI(){
        baseAttackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
        typeLbl.text = pokemon.type
        descriptionLbl.text = pokemon.description
        
        
        if pokemon.nextEvoId == "" {
            nextEvoDescriptionLbl.text = "No Evolution"
            futureEvoImg.isHidden = true
        } else{
            futureEvoImg.isHidden = false
            futureEvoImg.image = UIImage(named: pokemon.nextEvoId)
            let str = "Next Evolution: \(pokemon.nextEvoName) - LVL \(pokemon.nextEvoLevel)"
            nextEvoDescriptionLbl.text = str
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
