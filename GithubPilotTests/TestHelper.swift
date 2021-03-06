//
//  TestHelper.swift
//  GithubPilot
//
//  Created by yansong li on 2016-02-20.
//  Copyright © 2016 yansong li. All rights reserved.
//


// Get From: https://github.com/nerdishbynature/octokit.swift
import Foundation

internal class Helper {
    internal class func stringFromFile(name: String) -> String? {
        let bundle = NSBundle(forClass: self)
        let path = bundle.pathForResource(name, ofType: "json")
        if let path = path {
            let string = try? String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
            return string
        }
        return nil
    }
    
    internal class func JSONDataFromFile(name: String) -> NSData? {
        let bundle = NSBundle(forClass: self)
        let path = bundle.pathForResource(name, ofType: "json")!
        let data = NSData(contentsOfFile: path)
        return data
    }
}
