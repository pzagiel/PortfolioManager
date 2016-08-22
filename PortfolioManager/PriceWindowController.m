//
//  PriceWindowController.m
//  PortfolioManager
//
//  Created by Patrick on 12/12/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "PriceWindowController.h"
#import "FoundationDataObjects.h"
#import "InstrumentDao.h"
#import "PriceDao.h"
#import "Price.h"
#import "Instrument.h"

@implementation PriceWindowController

- (id)init
{
	//return [super initWithWindowNibName: @"MAImportantThingWindow"];
}

-(void)awakeFromNib
{	
	
	//[PriceTable registerForDraggedTypes:NSTabularTextPboardType];
	[PriceTable setDraggingSourceOperationMask:NSDragOperationCopy forLocal:NO];
	InstrumentDao *instrumentDao=[InstrumentDao new];
	instruments=[instrumentDao getAllInstrument];
	[instrumentDao release];
	[InstrumentCombo setUsesDataSource:YES];
	[InstrumentCombo setDataSource:self];
	
	//prices=[[PriceDao new] getPricesForInstrument:@""];
	
	
	//[PriceTable setUsesDataSource:YES];
	//[PriceTable setDataSource:self];
	
	//InstrumentDao *instrumentDao=[InstrumentDao new];
	//[InstrumentCombo  addItemsWithObjectValues:[[InstrumentDao new] getAllInstrument]];	
}


/*- (void)tableView:(NSTableView *)tableView draggingSession:(NSDraggingSession *)session willBeginAtPoint:(NSPoint)screenPoint forRowIndexes:(NSIndexSet *)rowIndexes
{
  NSLog(@"Enter Drag Session");
}*/

- (unsigned int)draggingEntered:(id <NSDraggingInfo>)sender {
	NSLog(@"Enter Drag");
	return 1;
}

- (void)draggedImage:(NSImage *)anImage beganAt:(NSPoint)aPoint
{
	NSLog(@"Enter Drag Image");

}

- (BOOL)tableView:(NSTableView *)tableView writeRowsWithIndexes:(NSIndexSet *)rowIndexes toPasteboard:(NSPasteboard*)pboard
{
	NSLog(@"write rows with indexes"); // no log output
	if( [[NSApp currentEvent] modifierFlags] & NSAlternateKeyMask){
		NSLog(@"Oh, yeah!");
		[self copySelectedRow:pboard];
		return YES;
	}	
	return NO;
}





/*- (BOOL)tableView:(NSTableView )tv writeRows:(NSArray)rows toPasteboard:(NSPasteboard*)pboard {
	//[self copySelectedRow];
	return YES;
}*/

- (void) copy:(id)sender {
	NSPasteboard *pb = [NSPasteboard generalPasteboard];
    [self copySelectedRow:pb];
    // some code to put data on the pasteBoard
}

// Should be add as a category for NStableview
//http://www.cocoabuilder.com/archive/cocoa/41168-copy-and-paste-from-nstableview.html
// http://myverylittletricks.net/code/?page_id=104

- (void) copySelectedRow:(NSPasteboard*)pboard 
{
	//NSPasteboard *pb = [NSPasteboard generalPasteboard];
	NSMutableString *tabsBuf = [NSMutableString string];
	NSMutableString *textBuf = [NSMutableString string];
	
	
	NSIndexSet *allrows = [PriceTable selectedRowIndexes];
	// Parse the different rows as follows
	NSUInteger row = [allrows firstIndex];
	while (row != NSNotFound)
	{
		NSArray *tableColumns = [PriceTable tableColumns];
		NSEnumerator *enumerator = [tableColumns objectEnumerator];
		NSTableColumn *col;
		id dataSource = [PriceTable dataSource];
		while (nil != (col = [enumerator nextObject]) )
		{
			id columnValue
			= [dataSource tableView:PriceTable
		  objectValueForTableColumn:col row:row];
			NSString *columnString = @"";
			if (nil != columnValue)
			{
				columnString = [columnValue description];
			}
			[tabsBuf appendFormat:@"%@\n",columnString];
			if (![columnString isEqualToString:@""])
			{
				[textBuf appendFormat:@"%@\t",columnString];
			}
		}
		// delete the last tab.  (But don't delete the last CR)
		/*if ([tabsBuf length])
		{
			[tabsBuf deleteCharactersInRange:NSMakeRange([tabsBuf length]-1, 1)];
		}*/
         [textBuf appendFormat:@"%@\n",@""];		
		 row = [allrows indexGreaterThanIndex:row];
	}
	
	{		
		[pboard declareTypes:
		 [NSArray arrayWithObjects:NSTabularTextPboardType,
		  NSStringPboardType, nil]
				   owner:nil];
		[pboard setString:[NSString stringWithString:textBuf]
			  forType:NSStringPboardType];
		//[pb setString:[NSString stringWithString:tabsBuf]
		//	  forType:NSTabularTextPboardType];
	}
	}
	
	
- (NSInteger)numberOfItemsInComboBox:(NSComboBox *)aComboBox;
{
    return [instruments count];//DatSource NSArray
}

- (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger)index;
{
    Instrument *instrument;
	instrument=[instruments objectAtIndex:index];
	return instrument.name;
}  

- (IBAction)loadPricesInTableView:(id)sender {
	Instrument *instrument;
	instrument=[instruments objectAtIndex:[InstrumentCombo indexOfSelectedItem]];
	// Now can call DAO to get price of Instrument using ISIN code
	//NSLog(@"Prices Retain Count Before:%d",[prices retainCount]);	
	[prices release];
	PriceDao *priceDao=[PriceDao new];
	prices=[priceDao getPricesForInstrument:instrument.code sorting:@"desc"];
	[prices retain];
    [priceDao release];
	//NSLog(@"Reload Data in TableView");
	[PriceTable reloadData];
	[[self window] setTitle:instrument.name];
}


- (int)numberOfRowsInTableView:(NSTableView *)aTable
{
	return ([prices count]);
}

- (id) tableView:(NSTableView *)pTableViewObj objectValueForTableColumn:(NSTableColumn *)pTableColumn row:(int)pRowIndex {
	Price *price;
    price=[prices objectAtIndex:pRowIndex];
    return [price valueForKey:[pTableColumn identifier]];
	
	/* if ([[pTableColumn identifier] isEqualToString:@"date"]) { return price.date; }
	 if ([[pTableColumn identifier] isEqualToString:@"value"]) { return price.value; }
	 if ([[pTableColumn identifier] isEqualToString:@"provider"]) { return price.provider; }
	 if ([[pTableColumn identifier] isEqualToString:@"evol"]) { return price.evol; }*/
	
}

- (id)tableView:(NSTableView *)aTable objectValueForColumn:(NSTableColumn *)aCol row:(int)aRow
{
	return ([prices objectAtIndex:aRow]);
}


- (void)windowWillClose:(NSNotification *)notification {
	
	NSLog(@"Price Window will close");
	[self release];
}



-(void)dealloc {
	NSLog(@"dealloc Price Window");
	[instruments release];
	[prices release];
	[ [self window] release];
	[super dealloc];
}




@end
