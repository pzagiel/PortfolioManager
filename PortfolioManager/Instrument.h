//
//  Instrument.h
//  PortfolioManager
//
//  Created by Patrick on 28/11/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Instrument : NSObject {
	NSString* code;
	NSString* name;
}

	@property (nonatomic, retain) NSString* code;
	@property (nonatomic, retain) NSString* name;
@end
