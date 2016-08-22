//
//  PriceTableView.m
//  PortfolioManager
//
//  Created by Patrick on 19/12/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "PriceTableView.h"


@implementation PriceTableView

- (void)draggedImage:(NSImage *)anImage beganAt:(NSPoint)aPoint
{
	NSLog(@"Enter Drag Image");
	NSString* appPath = [[NSBundle mainBundle] bundlePath];
	NSLog(appPath);
	//[[anImage TIFFRepresentation] writeToFile:@"/Users/pzagiel/DragImage.tif" atomically:YES];
	anImage = [[NSWorkspace sharedWorkspace] iconForFile:appPath];
	//[[anImage TIFFRepresentation] writeToFile:@"/Users/pzagiel/NewDragImage.tif" atomically:YES];
}


- (NSImage *)dragImageForRowsWithIndexes:(NSIndexSet *)dragRows tableColumns:(NSArray *)tableColumns event:(NSEvent *)dragEvent offset:(NSPointPointer)dragImageOffset
{
	NSLog(@"Drag Image For Row");
	NSString* appPath = [[NSBundle mainBundle] resourcePath];
	//NSLog(@"%s",[appPath stringByAppendingString:@"tabularData.icns"]);
	NSImage* dragImage=[[NSImage alloc] initWithContentsOfFile:[appPath stringByAppendingString:@"/tabularData.icns"]];
	return dragImage;
}


@end
