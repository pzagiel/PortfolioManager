//
//  PriceChartView.h
//  PortfolioManager
//
//  Created by Patrick on 27/12/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PriceChartView : NSView {


NSNumber *minValue;
NSNumber *maxValue;
NSArray *datapoints;	
}


@property (nonatomic, retain) NSNumber* minValue;
@property (nonatomic, retain) NSNumber* maxValue;
@property (nonatomic, retain) NSArray* datapoints;
@end
