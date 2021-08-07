//
//  MostViewedArticleDetailViewModelTests.swift
//  AssesmentTests
//
//  Created by Admin on 07/08/21.
//

import XCTest

class MostViewedArticleDetailViewModelTests: XCTestCase {

    private var sut: MostViewedArticleDetailViewModel!
    private var mostViewedListArticleData: MostViewedArticleList!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        initialisation()
    }

    override func tearDownWithError() throws {
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
        
        let mockData = MockGenerator().getMockData()
        guard let data = mockData else{
            XCTAssertNotNil(mockData)
            return }
        let index = 0
        mostViewedListArticleData = data[index]
        sut = MostViewedArticleDetailViewModel(data: data[index])
        XCTAssertNotNil(sut.getArticleData())
    }
    
    func testScreenTitle(){
        
        guard let data = mostViewedListArticleData else{
            XCTAssertNotNil(mostViewedListArticleData)
            return
        }
        guard let title = data.title else{
            XCTAssertNotNil(data.title)
            return
        }
        XCTAssertNotNil(title)
    }
    
    func testMediaData(){
        guard let data = mostViewedListArticleData else{
            XCTAssertNotNil(mostViewedListArticleData)
            return
        }
        XCTAssertNotNil(data.media.first)
    }
    
    func testMediaMetaData(){
        guard let data = mostViewedListArticleData else{
            XCTAssertNotNil(mostViewedListArticleData)
            return
        }
        guard let media = data.media.first else{
            XCTAssertNotNil(data.media.first)
            return
        }
        XCTAssertNotNil(media.mediaMetadata.max())
    }
    
    func testArticleUrl(){
        guard let data = mostViewedListArticleData else{
            XCTAssertNotNil(mostViewedListArticleData)
            return
        }
        XCTAssertNotNil(data.url)
    }
}
