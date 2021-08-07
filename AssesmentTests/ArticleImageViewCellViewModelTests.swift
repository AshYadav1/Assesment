//
//  ArticleImageViewCellViewModelTests.swift
//  AssesmentTests
//
//  Created by Admin on 07/08/21.
//

import XCTest

class ArticleImageViewCellViewModelTests: XCTestCase {

    var sut: ArticleImageViewCellViewModel!
    
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
        let listData = data[index]
        guard let mediaData = listData.media.first?.mediaMetadata else{
            XCTAssertNotNil(listData.media.first?.mediaMetadata)
            return
        }
        guard let maxVal = mediaData.max() else{
            XCTAssertNotNil(mediaData.max())
            return
        }
        sut = ArticleImageViewCellViewModel(mediadata: maxVal, caption: listData.media.first?.caption ?? "")
        XCTAssertNotNil(sut.getMediaData())
    }
    
    func testArticleTitle(){
        XCTAssertNotNil(sut.getMediaData())
    }
    
    func testIsHaveCaption(){
        XCTAssertNotNil(sut.isHaveCaption())
    }
    
    func testImageUrl(){
        XCTAssertNotNil(sut.getImageUrl())
    }
}
