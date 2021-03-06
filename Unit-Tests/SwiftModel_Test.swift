//
//  SwiftModel_Test.swift
//  CouchbaseLite
//
//  Created by Jens Alfke on 6/19/15.
//  Copyright (c) 2015 Couchbase, Inc. All rights reserved.
//

import Foundation
import XCTest


class SwiftModel : CBLModel {
    @NSManaged var intsy: Int
    @NSManaged var stringsy: String
}


class SwiftModelWithRelation : CBLModel {
    @NSManaged var moddy: SwiftModel
}


class SwiftModel_Test: CBLTestCaseWithDB {

    func testSwiftModel() {
        #if swift(>=3.0)
            let model = SwiftModel(forNewDocumentIn: db);
        #else
            let model = SwiftModel(forNewDocumentInDatabase: db);
        #endif
        model.intsy = 42;
        model.stringsy = "Frood";
    }

    func testRelation() {
        #if swift(>=3.0)
            let model = SwiftModel(forNewDocumentIn: db);
            let relator = SwiftModelWithRelation(forNewDocumentIn: db)
        #else
            let model = SwiftModel(forNewDocumentInDatabase: db);
            let relator = SwiftModelWithRelation(forNewDocumentInDatabase: db)
        #endif
        relator.moddy = model
    }

}
