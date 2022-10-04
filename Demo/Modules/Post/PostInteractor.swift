//
//  PostInteractor.swift
//  Demo
//
//  Created by Daniel Diaz on 26/09/22.
//

import Foundation
import Alamofire

class PostInteractor {
    
    let urlBase: String = "https://gorest.co.in/public/v2/"
    var presenter: PostPresenter?
    
    func fetchData() {
        let url = urlBase + "posts"
        AF.request(url, method: .get).responseDecodable(of: [PostUser].self) { response in
            switch response.result {
            case .success(let usersFromService):
                let data = usersFromService
                self.presenter?.presentData(data: data)
            case .failure(let error):
                print(error)
            }
        }
    }
}
