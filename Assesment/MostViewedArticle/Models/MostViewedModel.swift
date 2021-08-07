//
//  MostViewedModel.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation

struct MostViewedArticleModel: Codable, CodableInit{
    
    var status: String?
    var copyRight: String?
    var numResults: Int?
    var results: [MostViewedArticleList] = []
    
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case copyRight = "copyright"
        case numResults = "num_results"
        case results = "results"
    }
    
    init(from decoder: Decoder) throws {
        
        do{
            let container = try decoder.container(keyedBy: CodingKeys.self)
            status = try container.decodeIfPresent(String.self, forKey: .status)
            copyRight = try container.decodeIfPresent(String.self, forKey: .copyRight)
            numResults = try container.decodeIfPresent(Int.self, forKey: .numResults)
            results = try container.decodeIfPresent([MostViewedArticleList].self, forKey: .results) ?? []
            
        }catch(let error){
            throw(error)
        }
    }
}

struct MostViewedArticleList: Codable, CodableInit{
    
    var id: Int64?
    var assetId: Int64?
    var source: String?
    var publishedDate: String?
    var updatedDate: String?
    var section: String?
    var subSection: String?
    var uri: String?
    var url: String?
    var nytdSection: String?
    var adxKeyword: String?
    var column: String?
    var byline: String?
    var type: String?
    var title: String?
    var abstract: String?
    var desfacet: [String]? = []
    var orgfacet: [String]? = []
    var perfacet: [String]? = []
    var geofacet: [String]? = []
    var media: [Media] = []
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case assetId = "asset_id"
        case source = "source"
        case publishedDate = "published_date"
        case updatedDate = "updated"
        case section = "section"
        case subSection = "subsection"
        case uri = "uri"
        case url = "url"
        case nytdSection = "nytdsection"
        case adxKeyword = "adx_keywords"
        case column = "column"
        case byline = "byline"
        case type = "type"
        case title = "title"
        case abstract = "abstract"
        case desfacet = "des_facet"
        case orgfacet = "org_facet"
        case perfacet = "per_facet"
        case geofacet = "geo_facet"
        case media = "media"
    }
    
    init(from decoder: Decoder) throws {
        
        do{
            let container = try decoder.container(keyedBy: CodingKeys.self)
            id = try container.decodeIfPresent(Int64.self, forKey: .id)
            assetId = try container.decodeIfPresent(Int64.self, forKey: .assetId)
            source = try container.decodeIfPresent(String.self, forKey: .source)
            publishedDate = try container.decodeIfPresent(String.self, forKey: .publishedDate)
            updatedDate = try container.decodeIfPresent(String.self, forKey: .updatedDate)
            section = try container.decodeIfPresent(String.self, forKey: .section)
            subSection = try container.decodeIfPresent(String.self, forKey: .subSection)
            uri = try container.decodeIfPresent(String.self, forKey: .uri)
            url = try container.decodeIfPresent(String.self, forKey: .url)
            nytdSection = try container.decodeIfPresent(String.self, forKey: .nytdSection)
            adxKeyword = try container.decodeIfPresent(String.self, forKey: .adxKeyword)
            column = try container.decodeIfPresent(String.self, forKey: .column)
            byline = try container.decodeIfPresent(String.self, forKey: .byline)
            type = try container.decodeIfPresent(String.self, forKey: .type)
            title = try container.decodeIfPresent(String.self, forKey: .title)
            abstract = try container.decodeIfPresent(String.self, forKey: .abstract)
            desfacet = try container.decodeIfPresent([String].self, forKey: .desfacet)
            orgfacet = try container.decodeIfPresent([String].self, forKey: .orgfacet)
            perfacet = try container.decodeIfPresent([String].self, forKey: .perfacet)
            geofacet = try container.decodeIfPresent([String].self, forKey: .geofacet)
            media = try container.decodeIfPresent([Media].self, forKey: .media) ?? []
        }catch(let error){
            throw(error)
        }
    }
}

struct Media: Codable, CodableInit{
    
    var type: String?
    var subType: String?
    var caption: String?
    var copyRight: String?
    var approvedForSyndication: Int?
    var mediaMetadata: [MediaMetaData] = []
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case subType = "subtype"
        case caption = "caption"
        case copyRight = "copyright"
        case approvedForSyndication = "approved_for_syndication"
        case mediaMetadata = "media-metadata"
    }
    
    init(from decoder: Decoder) throws {
        
        do{
            let container = try decoder.container(keyedBy: CodingKeys.self)
            type = try container.decodeIfPresent(String.self, forKey: .type)
            subType = try container.decodeIfPresent(String.self, forKey: .subType)
            caption = try container.decodeIfPresent(String.self, forKey: .caption)
            copyRight = try container.decodeIfPresent(String.self, forKey: .copyRight)
            approvedForSyndication = try container.decodeIfPresent(Int.self, forKey: .approvedForSyndication)
            mediaMetadata = try container.decodeIfPresent([MediaMetaData].self, forKey: .mediaMetadata) ?? []
            
        }catch(let error){
            throw(error)
        }
    }
}

struct MediaMetaData: Codable, CodableInit, Comparable{
    
    var url: String?
    var format: String?
    var height: Int?
    var width: Int?
    
    enum CodingKeys: String, CodingKey {
        case url = "url"
        case format = "format"
        case height = "height"
        case width = "width"

    }
    
    init(from decoder: Decoder) throws {
        
        do{
            let container = try decoder.container(keyedBy: CodingKeys.self)
            url = try container.decodeIfPresent(String.self, forKey: .url)
            format = try container.decodeIfPresent(String.self, forKey: .format)
            height = try container.decodeIfPresent(Int.self, forKey: .height)
            width = try container.decodeIfPresent(Int.self, forKey: .width)
            
        }catch(let error){
            throw(error)
        }
    }
    
    static func <(lhs: MediaMetaData, rhs: MediaMetaData) -> Bool {
        return (lhs.width ?? Int.zero) < (rhs.width ?? Int.zero)
        }
}

