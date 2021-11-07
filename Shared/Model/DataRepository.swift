//
//  DataRepository.swift
//  AvecMoi
//
//  Created by Asad Mansoor on 2021-11-06.
//

import Foundation

class DataRepository {
    func getWords() -> [Word] {
        var result = [Word]()
        var size = 0
        
        while size < 5 {
            let element = listOfiOSWords.randomElement()
            if (!result.contains(element!)) {
                result.append(element!)
                size += 1
            }
        }
        return result
    }
}
