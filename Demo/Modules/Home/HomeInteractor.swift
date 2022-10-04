//
//  HomeInteractor.swift
//  Demo
//
//  Created by Daniel Diaz on 22/09/22.
//

import Foundation
import Alamofire

class HomeInteractor {
    
    
    let urlBase: String = "https://gorest.co.in/public/v2/"

    var presenter: HomePresenter?
    
    func fetchData() {
        let url = urlBase + "users"
        AF.request(url, method: .get).responseDecodable(of: [User].self) { response in
            switch response.result {
            case .success(let usersFromService):
                let data = usersFromService.filter {
                    $0.email != "MateusE@gmail.com"
                }
                self.presenter?.presentData(data: data)
            case .failure(let error):
                print(error)
            }
        }
    }
}


