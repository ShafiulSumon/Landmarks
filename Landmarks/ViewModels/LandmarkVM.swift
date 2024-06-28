//
//  LandmarkVM.swift
//  Landmarks
//
//  Created by Shafiul on 6/28/24.
//

import Foundation

class LandmarkVM {
    let observableObject = ObservableObject<[LandmarkModel]>()
    
    func generateData() {
        let rawData = RawData().data
        observableObject.result = rawData
    }
    
//    func generateData() {
//        do {
//            let rawData = try JSONDecoder().decode([LandmarkModel].self, from: RawData().landmarkData)
//            self.observableObject.result = rawData
//        }
//        catch {
//            print(error)
//        }
//        
//    }
}
