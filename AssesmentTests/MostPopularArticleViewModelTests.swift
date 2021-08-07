//
//  MostPopularArticleViewModelTests.swift
//  AssesmentTests
//
//  Created by Admin on 07/08/21.
//

import XCTest

class MostPopularArticleViewModelTests: XCTestCase {

    var sut: MostPopularArticleViewModel!
  
    override func setUpWithError() throws {
        initialisation()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        sut = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func initialisation(){
        
        let repository = MockMostViewedArticleRepository()
        /**Initialise MostPopularArticleViewModel*/
        sut = MostPopularArticleViewModel(repo: MockMostViewedArticleRepository())
        XCTAssertNotNil(sut.getRepository() === repository)
        fetchArticle()
    }
    
    func fetchArticle(){
        
        sut.getMostArtcileList()
        sleep(5)
        if let val = sut.articleData.value{
            XCTAssertNotNil(val)
        }else if let err = sut.articleData.error{
            XCTAssertNotNil(err)
        }else{
            XCTAssert(!sut.articleData.value!.results.isEmpty)
        }
    }

    func testNumberOfRows(){
        
        if let value = sut.articleData.value{
            XCTAssertNotNil(value)
        }else{
            XCTAssertNotNil(sut.articleData.value)
        }
        guard let value = sut.articleData.value else{
            XCTAssertNotNil(sut.articleData.value)
            return
        }
        XCTAssertTrue(sut.numberOfRows() == value.results.count)
    }
    
    func testCellViewModel(){
        
        guard let value = sut.articleData.value else{
            XCTAssertNotNil(sut.articleData.value)
            return
        }
        let index = 0
        guard value.results.count > index else{
            XCTAssert(value.results.count < index, "Index out of bound")
            return
        }
        XCTAssert(value.results.count > index)
    }
}
