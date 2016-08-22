//
//  PriceWindowController.h
//  PortfolioManager
//
//  Created by Patrick on 12/12/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PriceWindowController : NSWindowController {
	IBOutlet id InstrumentCombo;
    IBOutlet id PriceTable;
    NSMutableArray *instruments;
	NSMutableArray *prices;
	
	
}

@end
