//
//  ViewController.swift
//  DemoURLSession
//
//  Created by NguyenCuong on 1/17/18.
//  Copyright © 2018 NguyenCuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let urlString = URL(string: "http://jsonplaceholder.typicode.com/users/1")
//        if let url = urlString{
//            let task  = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
//                if error != nil{
//                    print(error)
//                }else{
//                    if let usavleData = data {
//                        print(usavleData) // 509Byte
//                    }
//                }
//            })
//            task.resume()
//        }
        
        
//        let urlString = "http://jsonplaceholder.typicode.com/users/1"
//        guard let requestURL = URL(string: urlString) else { return  }
//        let request = URLRequest(url: requestURL)
//        let task = URLSession.shared.dataTask(with: request){
//            (data, reponse, error) in
//            if error == nil, let usableData = data{
//                print(usableData) // 509byte
//            }
//        }
//        task.resume()
        
        
        
//        let session = URLSession.shared
//        let url = URL(string: "http://jsonplaceholder.typicode.com/users/1")!
//        let task = session.dataTask(with: url) { (data, reponse, error) -> Void in
//            if let data = data{
//                let string = String(data: data, encoding: String.Encoding.utf8)
//                print(string)
//            }
//        }
//        task.resume()
        
        
        
//        let url = URL(string: "http://jsonplaceholder.typicode.com/users/3")
//        let session = URLSession.shared // or let session = URLSession(configuration: URLSessionConfiguration.default)
//
//        if let usableUrl = url{
//            let task = session.dataTask(with: usableUrl, completionHandler: { (data, reponse, error) in
//                if let data = data {
//                    if let stringData = String(data: data, encoding: String.Encoding.utf8){
//                        print(stringData)
//                    }
//
//                }
//            })
//            task.resume()
//        }
        
//        let config = URLSessionConfiguration.default
//        let session = URLSession(configuration: config)
//        let url = URL(string: "http://jsonplaceholder.typicode.com/users/3")!
//
//        let task = session.dataTask(with: url) { (data, reponse, error) in
//            if error != nil {
//                print(error)
//            }else{
//                if let data = data{
//                    let value = String(data: data, encoding: String.Encoding.utf8)
//                    print(value!)
//                }
//            }
//
//        }
//        task.resume()
        
        
        dataRequest()
        
        
    }
    
    func dataRequest(){
        let urlToRequest = "http://www.kaleidosblog.com/tutorial/nsurlsession_tutorial.php"
        let url4 = URL(string: urlToRequest)!
        let session4 = URLSession.shared
        let request = NSMutableURLRequest(url: url4)
        request.httpMethod = "POST"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        
        let paramString = "data=Hello"
        request.httpBody = paramString.data(using: String.Encoding.utf8)
        
        let task = session4.dataTask(with: request as URLRequest) { (data, reponse, error) in
            guard let _: Data = data, let _: URLResponse = reponse, error == nil else{
                print(error)
                return
            }
            
            let dataString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print(dataString)
            
        }
        
        task.resume()
    }

}

