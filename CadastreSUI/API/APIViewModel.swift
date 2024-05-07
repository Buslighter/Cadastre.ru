//
//  APIViewModel.swift
//  Cadastre.ru
//
//  Created by gleba on 16.11.2022.
//

import Foundation

class ViewModel: ObservableObject{
    let shared = APIParser()
    @Published var definitionsData: [Datum]? = []
    func getData() async {
        do {
            let fetchedData = try await self.shared.getData()
            DispatchQueue.main.async {
                self.definitionsData = fetchedData
            }
        }
        catch {
            print ("ERROR")
            
        }
}
class APIParser {
    private enum GIError: Error {
        case error
    }
    func getData() async throws -> [Datum]?{
        let url = "https://api.cadastre.ru/v1/"
        let query = "definitions"
        var request = URLRequest(url: URL(string: url+query)!)
        request.httpMethod = "GET"
        request.setValue("jdfvS33fs9FEi93j1Lj", forHTTPHeaderField: "Authorization")
        let (data, _) = try await URLSession.shared.data(for: request)
        guard let answer = try? JSONDecoder().decode(Definitions.self, from: data) else {
            throw GIError.error
        }
        return answer.data
        
//        let task = URLSession.shared.dataTask(with: request) {
//            (data, _, error) in
//            if error == nil && data != nil {
//                let decoder = JSONDecoder()
//                do {
//                    let jsonData = try? JSONSerialization.jsonObject(with: data!, options: .fragmentsAllowed)
//                    
//                    print(jsonData)
//                }
//            }
        }
//        task.resume()
    }
}
