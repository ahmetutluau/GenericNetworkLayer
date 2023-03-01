//
//  ViewController.swift
//  GenericNetworkLayer
//
//  Created by Ahmet Utlu on 28.02.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getDetail()
    }

    func getPopularMovies() {
        Networking.request(router: MovieRouter.popular) { (response: PopularResponseModel?, errorString) in
            
            guard let response = response else { return }
            
            print("iiiiii......\(response)")
            
        } onFailure: { (errorString, errorType) in
            guard let error = errorString else { return }
            
            print(error)
        }
    }
    
    func getDetail() {
        Networking.request(router: MovieRouter.detail(646389)) { (response: DetailResponseModel?, errorString) in
            
            guard let response = response else { return }
            
            print("iiiiii......\(response)")
            
        } onFailure: { (errorString, errorType) in
            guard let error = errorString else { return }
            
            print(error)
        }
    }
}

