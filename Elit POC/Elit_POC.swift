//
//  Elit_POC.swift
//  Elit POC
//
//  Created by Apple on 01/04/24.
//

import XCTest


final class Elit_POC: XCTestCase {

    var sut: ApiManager!
      
     
    func testFetchData() {
        //let expectation = XCTestExpectation(description: "Fetch data from API")
        
        ApiManager.Get(api: "http://ec2-3-7-253-252.ap-south-1.compute.amazonaws.com:3052/user/profiles/cb3d7d28-0cd6-4505-8f33-35f5543dfbbd") { response in
            do {
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(UserProfile_Base.self, from: response)
                
                XCTAssertTrue((responseModel.profiles != nil),"Data received from API")
              //  expectation.fulfill()
            }catch{
                
            }
        } failure: { Error in
            
        }

        
       //    wait(for: [expectation], timeout: 5.0)
    }

}


