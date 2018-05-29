//
//  main.swift
//  TP RolePlay Battle (POO)
//
//  Created by User on 20/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation
func input() -> Int {
    let strData = readLine();
    return Int(strData!)!
}
func newScreen(n: Int) {
    let n: Int = 0
    var i: Int = 0
    repeat {
    print("")
    i += 1
    }while i < n
}

//--------------------------CLASS-------------------------------
public class Personnage {
    var name: String
    var life = 10
    var level: Int = 1
    var choiceInterface: Int
    var sacADos: [String]
    var donjon1 : Bool = false
    var donjon2 : Bool = false
    var i:Int
    init () {
        name = ""
        choiceInterface = 0
        sacADos = []
        i = 0
    }
    
    public class Monster {
        var name: String?
        var life = 5
        func attackM() {
            perso.life -= 1
        }
    }
//-----------------------AVENTURE------------------------------------
    func aventure() {
        if perso.level == 2 {
            newScreen(n: 100)
        } else {
            print("Tu n'es pas assez haut niveau pour pouvoir partir à l'aventure")
            interface()
        }
    }
    
    
    
    
    
//------------------------DONJONS----------------------------------------
    func donjon(choice: Int) {
        if choice == 1 && perso.donjon1 == false {
            var choiceObjet: Int = 0
            print("Bienvenue dans le Donjon des Squelettes !")
            print("Ici il y a beaucoup de Squelettes... tiens d'ailleurs en voilà un !")
            print("------------")
            print("▒▒▒░░░░░░░░░░▄▐░░░░")
            print("▒░░░░░░▄▄▄░░▄██▄░░░")
            print("░░░░░░▐▀█▀▌░░░░▀█▄░")
            print("░░░░░░▐█▄█▌░░░░░░▀█▄")
            print("░░░░░░░▀▄▀░░░▄▄▄▄▄▀▀")
            print("░░░░░▄▄▄██▀▀▀▀░░░░░")
            print("░░░░█▀▄▄▄█░▀▀░░░░░░")
            print("░░░░▌░▄▄▄▐▌▀▀▀░░░░░")
            print("░▄░▐░░░▄▄░█░▀▀░░░░░")
            print("░▀█▌░░░▄░▀█▀░▀░░░░░")
            print("░░░░░░░░▄▄▐▌▄▄░░░░░")
            print("░░░░░░░░▀███▀█░▄░░░")
            print("░░░░░░░▐▌▀▄▀▄▀▐▄░░░")
            print("░░░░░░░▐▀░░░░░░▐▌░░")
            print("░░░░░░░█░░░░░░░░█░░")
            print("░░░░░░▐▌░░░░░░░░░█░")
            print("Dans un combat tu as deux choix, mais bon ... on sait tous que la meilleur défense c'est l'attaque !")
            combat()
            perso.level += 1
            perso.donjon1 = true
            print("Bravo !! Tu l'as tué !! Par contre tu as pris pas mal de dégat... tiens une potion.")
            print("Voilà, range la dans ton sac tu l'utilisera tout à l'heure. Ou maintenant comme tu veux")
            print("1. Maintenant")
            print("2. Plus tard")
            choiceObjet = input()
            if choiceObjet == 1 {
                perso.life += 5
            } else if choiceObjet == 2 {
                sacADos = ["Potion de Soin"]
            }
            print("Bien ! Retournons dans ton inventaire :D !")
            interface()
        } else if choice == 2 && perso.donjon2 == false {
           var choiceObjet: Int = 0
            print("Bienvenue dans le Donjon des Monstres Méchants !")
            print("Cette fois, vous combattrez des ... Tortues !")
            print("------------")
            print("                   ___")
            print("         .,-;-;-,./'_/ ")
            print("       _/_/_/_|_\\) /")
            print("     '-<_><_><_><_>=/ ")
            print("       `/_/====/_/-'\\ ")
            print("        ''     ''    '' ")
            combat()
            perso.level += 1
            perso.donjon2 = true
            print("Bravo !! Tu l'as tué !! Par contre tu as pris pas mal de dégat... tiens une potion.")
            print("Voilà, range la dans ton sac tu l'utilisera tout à l'heure. Ou maintenant comme tu veux")
            print("1. Maintenant")
            print("2. Plus tard")
            choiceObjet = input()
            if choiceObjet == 1 {
                perso.life += 5
                perso.name = "Tortue Chauve"
            } else if choiceObjet == 2 {
                sacADos = ["Potion de la Tortue Chauve"]
            }
            print("Bien ! Retournons dans ton inventaire :D !")
            interface()
        } else {
            print("Tu as déjà fait ce donjon là")
            interface()
        }
    }
    
    func combat() {
        var choiceBattle: Int = 0
        let monster = Monster()
        repeat {
            print("1. Attaquer")
            print("2. Se Défendre")
            choiceBattle = input()
            if choiceBattle == 1 {
                monster.life -= 1
                monster.attackM()
            } else if choiceBattle == 2 {
                perso.life += 1
                monster.attackM()
            }
            print("Il vous reste \(perso.life) PV")
            print("Il reste \(monster.life) PV au monstre")
            
        } while monster.life > 0
        if monster.life == 0 {
            print("Le monstre est mort")
        }
    }
//-----------------------------------INTERFACE---------------------------------
   
    func interface() {
        var choiceInterface2: Int = 0
        var choiceDonjon: Int = 0
        print("---\(name)---")
        print("1. Sac à dos")
        print("2. Donjons")
        print("3. Aventure")
        print("4. Caractéristiques")
        print("5. Liste d'amis")
        print("6. Quittez")
        choiceInterface = input()
        
        switch choiceInterface {
        case 1:
            newScreen(n: 10)
            print("---Sac à Dos---")
            print(perso.sacADos)
            print("Que voulez vous faire ?")
            print("1. Utilisez un objet")
            print("2. Retour")
            choiceInterface2 = input()
            if choiceInterface2 == 1 {
                var choiceObjet: String = ""
                print("Quel objet voulez vous utilisez ?")
                choiceObjet = readLine()!
                let str:String = choiceObjet
                switch str {
                case "Potion de soin":
                    if sacADos[0] == "Potion de Soin" {
                        print("Tu es soigné de 5 PV")
                        perso.life += 5
                        sacADos[0] = ""
                        interface()
                    } else if sacADos[0] == "Potion de la Tortue Chauve" {
                        print("Tu es soigné de 5 PV... mais tu es devenu une tortue chauve")
                        perso.life += 5
                        perso.name = "Tortue Chauve"
                        sacADos[0] = ""
                    } else {
                        print("Tu ne possède pas cette objet dans ton sac")
                        interface()
                    }
                default:
                    interface()
                }
            } else {
                interface()
            }
        case 2:
            newScreen(n: 10)
            print("---Donjons---")
            print("1) Donjon des Squelettes")
            print("2) Donjon des Monstres Méchants")
            print("...Coming Soon...")
            print("Quel donjon voulez vous affronter ?")
            choiceDonjon = input()
            if choiceDonjon == 1 {
                donjon(choice: 1)
            } else if choiceDonjon == 2 {
                donjon(choice: 2)
            }
        case 3:
            aventure()
        case 4:
            newScreen(n: 10)
            print("---Caractéristiques---")
            print("Point de vie : \(perso.life)")
            print("Niveau : \(perso.level)")
            interface()
        case 5:
            print("T'as pas d'amis... et tu le sais...")
            print("")
            print("")
            interface()
        case 6:
            newScreen(n: 10)
            print("Merci d'avoir joué")
            exit(0)
        default:
            exit(0)
        }
    }
}

var perso = Personnage()
var choiceTuto1: Int
print("Grand Maitre: Bonjour aventurier ! Commencez par me donner votre nom :")

perso.name = readLine()!

print("Grand Maitre: \(perso.name) ? C'est cool comme nom !")
print("1.Merci !")
print("2.Euh...")
choiceTuto1 = input()
if choiceTuto1 == 1 {
    print("Grand Maitre: De rien !!")
} else {
    print("Grand Maitre: Bref...")
}

print("Grand Maitre: Je vais t'apprendre à te battre aujourd'hui !")
print("Grand Maitre: Pour commencer, voici ton interface héros !")
perso.interface()

