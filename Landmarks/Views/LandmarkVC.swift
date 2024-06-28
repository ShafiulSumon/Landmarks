//
//  ViewController.swift
//  Landmarks
//
//  Created by Shafiul on 6/28/24.
//

import UIKit

class LandmarkVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    private var landmarkVM = LandmarkVM()
    private var data: [LandmarkModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        landmarkVM.observableObject.binding { [weak self] data in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.data = data
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        landmarkVM.generateData()
    }
}

extension LandmarkVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.landmarkCell, for: indexPath) as? LandmarkTVC else { return UITableViewCell() }
        
        cell.landmarkImageView.image = UIImage(named: data?[indexPath.row].imageName ?? "")
        cell.landmarkImageView.layer.cornerRadius = 8
        cell.landmarkTitle.text = data?[indexPath.row].name
        cell.landmarkSubtitle.text = data?[indexPath.row].subtitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
}

