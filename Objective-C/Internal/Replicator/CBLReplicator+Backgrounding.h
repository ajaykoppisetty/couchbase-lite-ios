//
//  CBLReplicator+Backgrounding.h
//  CouchbaseLite
//
//  Created by Pasin Suriyentrakorn on 8/31/17.
//  Copyright © 2017 Couchbase. All rights reserved.
//

#if TARGET_OS_IPHONE

#import <CouchbaseLite/CouchbaseLite.h>

@interface CBLReplicator (Backgrounding)

- (void) setupBackgrounding;

- (void) endBackgrounding;

- (void) okToEndBackgrounding;

@end

#endif
