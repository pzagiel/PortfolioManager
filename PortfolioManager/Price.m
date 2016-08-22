//
//  Price.m
//  PortfolioManager
//
//  Created by Patrick on 13/11/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "Price.h"

@implementation Price
@synthesize instrCode,instrName,date,value,evol,provider,timestamp;
-(void)dealloc {
	//NSLog(@"dealloc Price Object %@ %@ %@",instrName,date,value);
	[instrCode release];
	[instrName release];
	[date release];
	[value release];
	[provider release];
	[super dealloc];
}
@end

