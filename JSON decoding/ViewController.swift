//
//  ViewController.swift
//  JSON decoding
//
//  Created by Aisaule Sibatova on 15.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstUrl = createUrl(with: "Black%Lotus")
        let secondUrl = createUrl(with: "OPT")
        callApi(url: firstUrl)
        callApi(url: secondUrl)
    }
    
    
    private func createUrl(with queryItemName: String) -> URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.magicthegathering.io"
        components.path = "/v1/cards"
        components.queryItems = [URLQueryItem(name: "name", value: queryItemName)]
        return components.url
    }
    
    private func callApi(url: URL?) {
        guard let url = url else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
        
            if let error = error { print(error) }
            
            guard let response = response as? HTTPURLResponse else { return }
            
            guard let data = data else { return }
            
            print("Status code: \(response.statusCode)")

            do {
                let data = try JSONDecoder().decode(Cards.self, from: data)
                guard let card = data.cards.first else {return}
                print("Json data: \(card)")
            }
            catch {
                print("Error: \(error)")
            }
        }.resume()
    }
}
