//
//  MostPopularListCellViewModelTests.swift
//  AssesmentTests
//
//  Created by Admin on 07/08/21.
//

import XCTest

class MostPopularListCellViewModelTests: XCTestCase {

    private var sut: MostPopularListCellViewModel!
    private var mostViewedListArticleData: MostViewedArticleList!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        testInitialisation()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        try super.tearDownWithError()
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

    func testInitialisation(){
        let mockData = MockGenerator().getMockData()
        guard let data = mockData else{
            XCTAssertNotNil(mockData)
            return }
        let index = 0
        mostViewedListArticleData = data[index]
        sut = MostPopularListCellViewModel(data: mostViewedListArticleData)
        XCTAssertNotNil(sut.getCellData())
    }
    
    func testCellTitle(){
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
    
    func testCellImageUrl(){
        
        guard let data = mostViewedListArticleData else{
            XCTAssertNotNil(mostViewedListArticleData)
            return
        }
        let media = data.media
        guard let mediaData = media.first else{
            XCTAssertNotNil(media.first)
            return
        }
        guard let mediaMetaData = mediaData.mediaMetadata.first else{
            XCTAssertNotNil(mediaData.mediaMetadata.first)
            return
        }
        guard let url = mediaMetaData.url else{
            XCTAssertNotNil(mediaMetaData.url)
            return
        }
        XCTAssertNotNil(url)
    }
    
    func testCellDescription(){
        guard let data = mostViewedListArticleData else{
            XCTAssertNotNil(mostViewedListArticleData)
            return
        }
        guard let description = data.abstract else{
            XCTAssertNotNil(data.abstract)
            return
        }
        XCTAssertNotNil(description)
    }
    
    func testCellPublish(){
        guard let data = mostViewedListArticleData else{
            XCTAssertNotNil(mostViewedListArticleData)
            return
        }
        XCTAssertNotNil(data.publishedDate)
    }
}

class MockGenerator {
    
    func getMockData() -> [MostViewedArticleList]? {
        
        guard let path = Bundle.main.path(forResource: "content", ofType: "json") else{
            return nil}
        
        do{
            let data = try Data(contentsOf: URL(fileURLWithPath: path))
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let articleObj = try decoder.decode(MostViewedArticleModel.self, from: data)
            return articleObj.results
        }catch{
            return nil
        }
    }
}
