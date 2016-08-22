
#import "AppController.h"
#import "FoundationDataObjects.h"
#import "InstrumentDao.h"
#import "PriceDao.h"
#import "Price.h"
#import "Instrument.h"
#import "PriceWindowController.h"
#import "ChartWindowController.h"
#define DBPath @"/Users/pzagiel/Dropbox/Finance Toolkit/Hello/PortfolioManager/FinancialWorld.db"

@implementation AppController

-(void)awakeFromNib
{	
	
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

/*
- (NSInteger)numberOfItemsInComboBox:(NSComboBox *)aComboBox;
{
    return [instruments count];//DatSource NSArray
}

- (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger)index;
{
    Instrument *instrument;
	instrument=[instruments objectAtIndex:index];
	return (instrument.name);
}  */



/*
- (IBAction)loadPricesInTableView:(id)sender {
	Instrument *instrument;
	instrument=[instruments objectAtIndex:[InstrumentCombo indexOfSelectedItem]];
	// Now can call DAO to get price of Instrument using ISIN code
	//NSLog(@"Prices Retain Count Before:%d",[prices retainCount]);	
	[prices release];
	PriceDao *priceDao=[PriceDao new];
	prices=[priceDao getPricesForInstrument:instrument.code];
    [priceDao release];
	//NSLog(@"Reload Data in TableView");
	[PriceTable reloadData];
	[PriceWindow setTitle:instrument.name];
	}*/


/*
- (int)numberOfRowsInTableView:(NSTableView *)aTable
{
	return ([prices count]);
}


- (id) tableView:(NSTableView *)pTableViewObj objectValueForTableColumn:(NSTableColumn *)pTableColumn row:(int)pRowIndex {
	Price *price;
    price=[prices objectAtIndex:pRowIndex];
    return [price valueForKey:[pTableColumn identifier]];
	
 //if ([[pTableColumn identifier] isEqualToString:@"date"]) { return price.date; }
 //if ([[pTableColumn identifier] isEqualToString:@"value"]) { return price.value; }
 //if ([[pTableColumn identifier] isEqualToString:@"provider"]) { return price.provider; }
 //if ([[pTableColumn identifier] isEqualToString:@"evol"]) { return price.evol; }
	
}*/

/*
- (id)tableView:(NSTableView *)aTable objectValueForColumn:(NSTableColumn *)aCol row:(int)aRow
{
	return ([prices objectAtIndex:aRow]);
}*/



- (IBAction)close:(id)sender {
    NSLog(@"Close Window");
}


- (IBAction)open:(id)sender {
	//[LogField setTextValue: @"Open Window"];
}



- (IBAction)openPriceWindow:(id)sender {
	PriceWindowController* priceWindowsController;
	priceWindowsController = [[NSWindowController alloc] initWithWindowNibName:@"PriceWindow"];
    [priceWindowsController showWindow:nil];
}

- (IBAction)openPriceChartWindow:(id)sender {
	ChartWindowController* chartWindowsController;
	chartWindowsController = [[ChartWindowController alloc] initWithWindowNibName:@"PriceChart"];
    [chartWindowsController showWindow:nil];
}



/*
- (void)windowWillClose:(NSNotification *)notification {
	
	 NSLog(@"Price Window will close");
	[WindowNib release];
	[PriceWindow release];
	[self release];
}*/


/*
-(void)dealloc {
	NSLog(@"dealloc Price Window");
	[instruments release];
	[prices release];
	[super dealloc];
}
*/







- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	  NSLog(@"applicationDidFinishLaunching");
}


- (BOOL)application:(NSApplication *)theApplication openFile:(NSString *)filename
{
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	[defaults setObject:filename forKey:@"db"];
     NSLog(@"set db to:%@",filename);
    return YES;
}

@end
