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
func newScreen() {
    var i: Int = 0
    repeat {
        print("")
        i += 1
    }while i < 100
}
func enter() {
    var enter: String = ""
    enter = readLine()!
}

//--------------------------CLASS-------------------------------
public class Personnage {
    var name: String
    var life = 10
    var level: Int = 0
    var classe: String = ""
    var choiceInterface: Int
    var sacADos: [String]
    var donjon1 : Bool = false
    var donjon2 : Bool = false
    var unlock2 : Bool = false
    var unlock3 : Bool = false
    var i:Int
    init () {
        name = ""
        choiceInterface = 0
        sacADos = []
        i = 0
    }
}
//-----------------------AVENTURE------------------------------------

func aventure() {
    if perso.level == 2 {
        newScreen()
        print("Grand Maitre: Tu es enfin prêt aventurier")
        enter()
        print("Grand Maitre: Je vais te téléporter au début de ton aventure mais avant laisse moi te raconter une histoire...")
        enter()
        print("Grand Maitre: ... Le monde regorge de créature fantastique que nous appelons Pokémon... ah non c'est pas ça")
        enter()
        print("Grand Maitre: Bienvenue dans le monde de Terminal Quest !")
        enter()
        print("Grand Maitre: Ici tout est binaire. Les méchants sont méchants, les gentils sont gentils et je suis le meilleur.")
        enter()
        print("Grand Maitre: Tu fais parti du peuple des -1-. Ton village était tranquille quand soudainement...")
        enter()
        print("...")
        enter()
        print("...")
        enter()
        print("...")
        enter()
        print("Grand Maitre: Je laisse un peu de suspence ...")
        enter()
        print("...")
        enter()
        print("Le peuple des -0- à attaquer TOUUUT le royaume des -1-. Le Roi Bool n'a rien pu faire...")
        enter()
        print("Mais un jour tu as pris tes couilles en mains et tu t'es dis 'Lol, les -0- c'est des gros nul' et ainsi commença ta quête !")
        enter()
        print("Grand Maitre: Le temps est venu pour toi de choisir ta classe !! Je te parle pas d'une option à l'école nan nan ...")
        enter()
        print("Grand Maitre: Mais bien d'une classe de héros ! Voici tes choix :")
        print("1. Guerrier")
        print("2. Magicien")
        print("3. Developper")
        var classeHero: Int = 0
        classeHero = input()
        if classeHero == 1 {
            print("Grand Maitre: Bien ! Tu sera un guerrier.")
            print("*Clap Clap Clap*")
            perso.classe = "Guerrier"
            print("Grand Maitre: à partir de maintenant tu te battera comme tel")
            enter()
        } else if classeHero == 2 {
            print("Grand Maitre: Bien ! Tu sera un Magicien.")
            perso.classe = "Magicien"
            print("Grand Maitre: à partir de maintenant tu te battera comme tel")
            enter()
        } else if classeHero == 3 {
            print("Grand Maitre: Bien ! Tu sera un Developper.")
            perso.classe = "Developper"
            print("Grand Maitre: à partir de maintenant tu te battera comme tel")
            enter()
        }
        
        print("Grand Maitre: Prêt à être téléporté ?")
        var choicetp: Int = 0
        print("1. Oui")
        print("2. Non")
        choicetp = input()
        if choicetp == 1 {
            print("Grand Maitre: C'est parti !!!!!!!!")
            perso.unlock2 = true
            aventure2()
        } else {
            print("Grand Maitre: Bien... Quand tu es prêt commence le chapitre 2 !")
            perso.unlock2 = true
            interface()
        }
        
    } else {
        print("Grand Maitre: Tu n'es pas assez haut niveau pour pouvoir partir à l'aventure")
        interface()
    }
}

func aventure2() {
    print("*Bruit de téléportation*")
    print("Grand Maitre: Nous voici \(perso.name) dans le village de Bash !!")
    perso.unlock3 = true
    interface()
}

func aventure3() {
    print("Grand Maitre: Ceci est l'aventure 3")
    interface()
}


//------------------------DONJONS----------------------------------------
func donjon(choice: Int) {
    if choice == 1 && perso.donjon1 == false {
        var choiceObjet: Int = 0
        print("Grand Maitre: Bienvenue dans le Donjon des Squelettes !")
        enter()
        print("Grand Maitre: Ici il y a beaucoup de Squelettes... tiens d'ailleurs en voilà un !")
        enter()
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
        print("Grand Maitre: Dans un combat tu as deux choix, mais bon ... on sait tous que la meilleur défense c'est l'attaque !")
        enter()
        combat(monsterLife: 5)
        perso.level += 1
        perso.donjon1 = true
        print("Grand Maitre: Bravo !! Tu l'as tué !! Par contre tu as pris pas mal de dégat... tiens une potion.")
        
        enter()
        print("Grand Maitre: Voilà, range la dans ton sac tu l'utilisera tout à l'heure. Ou maintenant comme tu veux")
        print("1. Maintenant")
        print("2. Plus tard")
        choiceObjet = input()
        if choiceObjet == 1 {
            perso.life += 5
        } else if choiceObjet == 2 {
            perso.sacADos = ["Potion de Soin"]
        }
        if perso.donjon2 == true {
            print("Grand Maitre: Bien !! Tu es désormais assez haut niveau pour commencer ton aventure !")
        } else {
            print("Grand Maitre: Il te reste encore un donjon à faire et tu seras prêt pour l'aventure !")
        }
        enter()
        print("Grand Maitre: Bien ! Retournons dans ton inventaire :D !")
        interface()
    } else if choice == 2 && perso.donjon2 == false {
        var choiceObjet: Int = 0
        print("Grand Maitre: Bienvenue dans le Donjon des Monstres Méchants !")
        enter()
        print("Grand Maitre: Cette fois, vous combattrez des ... Tortues !")
        enter()
        print("------------")
        print("                   ___")
        print("         .,-;-;-,./'_/ ")
        print("       _/_/_/_|_\\) /")
        print("     '-<_><_><_><_>=/ ")
        print("       `/_/====/_/-'\\ ")
        print("        ''     ''    '' ")
        combat(monsterLife: 5)
        perso.level += 1
        perso.donjon2 = true
        print("Grand Maitre: Bravo !! Tu l'as tué !! Par contre tu as pris pas mal de dégat... tiens une potion de la Tortue Chauve.")
        enter()
        print("Grand Maitre: Voilà, range la dans ton sac tu l'utilisera tout à l'heure. Ou maintenant comme tu veux")
        print("1. Maintenant")
        print("2. Plus tard")
        choiceObjet = input()
        if choiceObjet == 1 {
            perso.life += 5
            perso.name = "Tortue Chauve"
        } else if choiceObjet == 2 {
            perso.sacADos = ["Potion de la Tortue Chauve"]
        }
        if perso.donjon1 == true {
            print("Grand Maitre: Bien !! Tu es désormais assez haut niveau pour commencer ton aventure !")
        } else {
            print("Grand Maitre: Il te reste encore un donjon à faire et tu seras prêt pour l'aventure !")
        }
        enter()
        print("Grand Maitre: Bien ! Retournons dans ton inventaire :D !")
        interface()
    } else {
        print("Grand Maitre: Tu as déjà fait ce donjon là")
        interface()
    }
}

func combat(monsterLife: Int) {
    var choiceBattle: Int = 0
    var monsterLife: Int = 0
    repeat {
        print("1. Attaquer")
        print("2. Se Défendre")
        choiceBattle = input()
        if choiceBattle == 1 {
            monsterLife -= 1
            perso.life -= 1
        } else if choiceBattle == 2 {
            perso.life += 1
            perso.life -= 1
        }
        print("Il vous reste \(perso.life) PV")
        print("Il reste \(monsterLife) PV au monstre")
        
    } while monsterLife > 0
    if perso.classe == "Developper" {
        
    }
    if monsterLife == 0 {
        print("Le monstre est mort")
    }
}
//-----------------------------------INTERFACE---------------------------------

func interface() {
    var choiceInterface2: Int = 0
    var choiceDonjon: Int = 0
    print("---\(perso.name)---")
    print("1. Sac à dos")
    print("2. Donjons")
    print("3. Aventure")
    print("4. Caractéristiques")
    print("5. Liste d'amis")
    print("6. Quittez")
    choiceInterface2 = input()
    
    switch choiceInterface2 {
    case 1:
        newScreen()
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
                if perso.sacADos[0] == "Potion de Soin" {
                    print("Tu es soigné de 5 PV")
                    perso.life += 5
                    perso.sacADos[0] = ""
                    interface()
                } else if perso.sacADos[0] == "Potion de la Tortue Chauve" {
                    print("Tu es soigné de 5 PV... mais tu es devenu une tortue chauve")
                    perso.life += 5
                    perso.name = "Tortue Chauve"
                    perso.sacADos[0] = ""
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
        newScreen()
        print("---Donjons---")
        print("1) Donjon des Squelettes")
        print("2) Donjon des Monstres Méchants")
        print("3) <-- Retour")
        print("Quel donjon voulez vous affronter ?")
        choiceDonjon = input()
        if choiceDonjon == 1 {
            donjon(choice: 1)
        } else if choiceDonjon == 2 {
            donjon(choice: 2)
        } else {
            interface()
        }
    case 3:
        print("---Aventure---")
        print("1) Chapitre 1: Qui Suis-je ?")
        print("2) Chapitre 2: Le début des problèmes")
        print("3) Chapitre 3: Le Roi Namidas")
        print("4) Coming Soon...")
        var choiceAventure: Int = 0
        choiceAventure = input()
        if choiceAventure == 1 {
            aventure()
        } else if choiceAventure == 2 && perso.unlock2 == true {
            aventure2()
        } else if choiceAventure == 3 && perso.unlock3 == true {
            aventure3()
        } else {
            print("Grand Maitre: Aie aie aie ! Tu dois d'abord finir les précédents chapitres avant de venir ici !")
            interface()
        }
    case 4:
        newScreen()
        print("---Caractéristiques---")
        if perso.classe == "Guerrier" || perso.classe == "Magicien" || perso.classe == "Developper" {
            print("Classe de Héros : \(perso.classe)")
        }
        print("Point de vie : \(perso.life)")
        print("Niveau : \(perso.level)")
        
        interface()
    case 5:
        print("Grand Maitre: T'as pas d'amis... et tu le sais...")
        print("")
        print("")
        interface()
    case 6:
        newScreen()
        print("Grand Maitre: Merci d'avoir joué")
        exit(0)
    default:
        exit(0)
    }
}

//----------------------CODE_EXE------------------------------------------
var perso = Personnage()
var choiceTuto1: Int
print("Grand Maitre: Bonjour aventurier ! Est-ce votre première aventure dans Terminal Quest ?")
print("1.Oui !")
print("2.Non ! Je suis un gros noob ô Grand Maitre !!")
choiceTuto1 = input()

if choiceTuto1 == 2 {
    print("Grand Maitre: D'accord ! Re-bienvenue dans le monde de Terminal Quest !")
    enter()
    perso.name = "Skipper"
    interface()
} else if choiceTuto1 == 1 {
    print("Grand Maitre: Bien le Noob. Dis moi ton nom: ")
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
    enter()
    print("Grand Maitre: Pour commencer, voici ton interface héros !")
    interface()
    
}



