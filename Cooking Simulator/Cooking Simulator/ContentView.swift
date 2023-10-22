//
//  ContentView.swift
//  Cooking Simulator
//
//  Created by Alexander Kempe on 10/21/23.
//

import SwiftUI

struct ContentView: View {
    func checkProduct(){
        if(stepNum == 1){
            if(selectedItem == "beef" && selectedTool == "skillet"){
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "cookingBeef"
                    selectedItem = ""
                    selectedTool = ""
                    let second = 2.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + second) {
                        product = ""
                    }
                }
                stepNum = 2
            }
            else if(selectedItem != "" && selectedTool != ""){
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "cookingBeef"
                    selectedItem = ""
                    selectedTool = ""
                    let second = 2.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + second) {
                        product = ""
                    }
                }
                bad = true
                stepNum = 2
            }
        }
        else if(stepNum == 2) {
            if(selectedItem == "eggNoodles" && selectedTool == "pot") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "cookedEggNoodles"
                    selectedItem = ""
                    selectedTool = ""
                    let second = 2.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + second) {
                        product = ""
                    }
                }
                stepNum = 3
            }
            else if(selectedItem != "" && selectedTool != "") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "cookedEggNoodles"
                    selectedItem = ""
                    selectedTool = ""
                    let second = 2.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + second) {
                        product = ""
                    }
                }
                bad = true
                stepNum = 3
            }
        }
        else if(stepNum == 3) {
            if(selectedItem == "cookedBeef" && selectedTool == "skillet" && product == "") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "cookingBeef"
                    selectedItem = ""
                    selectedTool = ""
                }
            }
            else if(selectedItem != "" && selectedTool != "" && product == "") {
                bad = true
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "cookingBeef"
                    selectedItem = ""
                    selectedTool = ""
                }
            }
            if(selectedItem == "garlicPowder" && product == "cookingBeef") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefWithStuff"
                    selectedItem = ""
                    selectedTool = ""
                    first = "garlicPowder"
                }
            }
            else if(selectedItem == "mushroomSoup" && product == "cookingBeef") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefWithStuff"
                    selectedItem = ""
                    selectedTool = ""
                    first = "mushroomSoup"
                }
            }
            else if(selectedItem != "" && product == "cookingBeef") {
                bad = true
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefWithStuff"
                    selectedItem = ""
                    selectedTool = ""
                }
            }
            if(product == "beefWithStuff" && selectedItem == "garlicPowder") {
                if(first == "garlicPowder") {
                    bad = true
                }
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefWithStuff"
                    selectedItem = ""
                    selectedTool = ""
                    stepNum = 4
                }
            }
            else if(product == "beefWithStuff" && selectedItem == "mushroomSoup") {
                if(first == "mushroomSoup") {
                    bad = true
                }
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefWithStuff"
                    selectedItem = ""
                    selectedTool = ""
                    stepNum = 4
                }
            }
            else if(selectedItem != "" && product == "beefWithStuff") {
                bad = true
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefWithStuff"
                    selectedItem = ""
                    selectedTool = ""
                    stepNum = 4
                }
            }
        }
        else if (stepNum == 4) {
            if(selectedItem == "eggNoodles" && product == "beefWithStuff") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefNoodles"
                    selectedItem = ""
                    selectedTool = ""
                }
            }
            else if(selectedItem != "" && product == "beefWithStuff") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefNoodles"
                    selectedItem = ""
                    selectedTool = ""
                }
            }
            if(product == "beefNoodles") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefNoodles"
                    selectedItem = ""
                    selectedTool = ""
                }
            }
            if(selectedItem == "sourCream" && product == "beefNoodles") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefNoodles"
                    selectedItem = ""
                    selectedTool = ""
                    first = "sourCream"
                }
            }
            else if(selectedItem == "saltPepper" && product == "beefNoodles") {
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefNoodles"
                    selectedItem = ""
                    selectedTool = ""
                    first = "saltPepper"
                }
            }
            else if(selectedItem != "" && product == "beefNoodles") {
                bad = true
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefNoodles"
                    selectedItem = ""
                    selectedTool = ""
                    let second = 2.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + second) {
                        product = ""
                        finalScreen = true
                    }
                }
            }
            if(product == "beefNoodles" && selectedItem == "sourCream") {
                if(first == "sourCream") {
                    bad = true
                }
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefNoodles"
                    selectedItem = ""
                    selectedTool = ""
                    let second = 2.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + second) {
                        product = ""
                        finalScreen = true
                    }
                }
            }
            else if(product == "beefNoodles" && selectedItem == "saltPepper") {
                if(first == "saltPepper") {
                    bad = true
                }
                let seconds = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    product = "beefWithStuff"
                    selectedItem = ""
                    selectedTool = ""
                    let second = 2.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + second) {
                        product = ""
                        finalScreen = true
                    }
                }
            }
        }
    }
    @State var showRecipe:Bool = false
    @State var showIngredients:Bool = false
    @State var showTools:Bool = false
    @State var selectedItem:String = ""
    @State var selectedTool:String = ""
    @State var stepNum:Int = 1
    @State var product:String = ""
    @State var bad:Bool = false
    @State var first:String = ""
    @State var finalScreen:Bool = false
    var body: some View {
        if(finalScreen == false) {
            HStack{
                Spacer()
                Button("Recipe") {
                    if(showRecipe == true) {
                        showRecipe = false
                    }
                    else {
                        showRecipe = true
                        showIngredients = false
                        showTools = false
                    }
                }
                Spacer()
                Button("Ingredients") {
                    if(showIngredients == true) {
                        showIngredients = false
                    }
                    else {
                        showIngredients = true
                        showRecipe = false
                        showTools = false
                        selectedItem = ""
                    }
                }
                Spacer()
                Button("Tools") {
                    if(showTools == true) {
                        showTools = false
                    }
                    else {
                        showTools = true
                        showRecipe = false
                        showIngredients = false
                        selectedTool = ""
                    }
                }
                Spacer()
            }
            if(showRecipe == true){
                VStack {
                    Text("Beef Stroganoff")
                        .font(.largeTitle)
                    Text("1. Sauté ground beef in a large skillet over medium heat until browned and crumbly for 5 to 10 minutes.")
                        .font(.title2)
                    Text("2. Fill a large pot with water and bring to a rapid boil. Cook egg noodles at a boil until tender yet firm to the bite, 7 to 9 minutes.")
                        .font(.title2)
                    Text("3. Stir condensed soup and garlic powder into the beef. Simmer for 10 minutes.")
                        .font(.title2)
                    Text("4. Add egg noodles to beef and stir to combine. Stir in sour cream and season with salt and pepper.")
                        .font(.title2)
                }
                .padding()
            }
            if(showIngredients == true){
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            selectedItem = "eggNoodles"
                            showIngredients = false
                            checkProduct()
                        } label: {
                            Image("eggNoodles")
                        }
                        Spacer()
                        Button {
                            if(stepNum == 1){
                                selectedItem = "beef"
                                showIngredients = false
                                checkProduct()
                            }
                            else {
                                selectedItem = "cookedBeef"
                                showIngredients = false
                                checkProduct()
                            }
                        } label: {
                            if(stepNum == 1){
                                Image("beef")
                            }
                            else{
                                Image("cookedBeef")
                            }
                        }
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Button {
                            selectedItem = "mushroomSoup"
                            showIngredients = false
                            checkProduct()
                        } label: {
                            Image("mushroomSoup")
                        }
                        Spacer()
                        Button {
                            selectedItem = "garlicPowder"
                            showIngredients = false
                            checkProduct()
                        } label: {
                            Image("garlicPowder")
                        }
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Button {
                            selectedItem = "sourCream"
                            showIngredients = false
                            checkProduct()
                        } label: {
                            Image("sourCream")
                        }
                        Spacer()
                        Button {
                            selectedItem = "saltPepper"
                            showIngredients = false
                            checkProduct()
                        } label: {
                            Image("saltPepper")
                        }
                        Spacer()
                    }
                }
                .padding()
            }
            if(showTools == true){
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            selectedTool = "skillet"
                            showTools = false
                            checkProduct()
                        } label: {
                            Image("skillet")
                        }
                        Spacer()
                        Button {
                            selectedTool = "pot"
                            showTools = false
                            checkProduct()
                        } label: {
                            Image("pot")
                        }
                        Spacer()
                    }
                }
                .padding()
            }
            Image(product)
            Image(selectedTool)
            Image(selectedItem)
        }
        else {
            VStack {
                if(bad == false){
                    Text("Great Job!")
                        .font(.title)
                    Text("You've cooked up a great meal.")
                    Image("final")
                }
                else{
                    Text("Uh oh...")
                        .font(.title)
                    Text("Your meal doesn't taste quite right. You must've done something wrong. You'll get it right next time!")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
