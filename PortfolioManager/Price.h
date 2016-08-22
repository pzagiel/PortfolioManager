//
//  Price.h
//  PortfolioManager
//
//  Created by Patrick on 13/11/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Price : NSObject {
	NSString *instrCode;
	NSString *instrName;
	NSDate *date;
	NSNumber *value;
	NSNumber *evol;
	NSString *provider;
	NSString *timestamp;
}

@property (nonatomic, retain) NSString* instrCode;
@property (nonatomic, retain) NSString* instrName;
@property (nonatomic, retain) NSDate* date;
@property (nonatomic, retain) NSNumber* value;
@property (nonatomic, retain) NSNumber* evol;
@property (nonatomic, retain) NSString* provider;
@property (nonatomic, retain) NSString* timestamp;
@end
