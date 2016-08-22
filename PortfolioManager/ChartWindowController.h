//
//  ChartWindowController.h
//  PortfolioManager
//
//  Created by Patrick on 27/12/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ChartWindowController : NSWindowController {
   IBOutlet id InstrumentCombo;
   IBOutlet id ChartView;
   IBOutlet id min;
   IBOutlet id max;
   NSMutableArray *instruments;
}

@end
