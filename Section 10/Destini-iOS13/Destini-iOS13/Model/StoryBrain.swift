//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [
                Story(
                    title: "Soru 1",
                    choice1: "Soru 3'e git", choice1Destination: 2,
                    choice2: "Soru 2'ye git", choice2Destination: 1
                ),
                Story(
                    title: "Soru 2",
                    choice1: "Soru 3'e git", choice1Destination: 2,
                    choice2: "Soru 4'e git", choice2Destination: 3
                ),
                Story(
                    title: "Soru 3",
                    choice1: "Soru 6'ya git", choice1Destination: 5,
                    choice2: "Soru 5'e git", choice2Destination: 4
                ),
                Story(
                    title: "Soru 4",
                    choice1: "The", choice1Destination: 0,
                    choice2: "End", choice2Destination: 0
                ),
                Story(
                    title: "Soru 5",
                    choice1: "The", choice1Destination: 0,
                    choice2: "End", choice2Destination: 0
                ),
                Story(
                    title: "Soru 6",
                    choice1: "The", choice1Destination: 0,
                    choice2: "End", choice2Destination: 0
                )
            ]
    
    func getStoryTitle() -> String{
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String{
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String{
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        }else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
