//
//  LandmarkVM.swift
//  Landmarks
//
//  Created by Shafiul on 6/28/24.
//

import Foundation

class LandmarkVM {
    let observableObject = ObservableObject<[LandmarkModel]>()
    
    func populateTableView() {
        let rawData = RawData().data
        observableObject.result = rawData
    }
}
