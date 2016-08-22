//
//  ChartWindowController.m
//  PortfolioManager
//
//  Created by Patrick on 27/12/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "ChartWindowController.h"
#import "InstrumentDao.h"
#import "PriceDao.h"
#import "Instrument.h"

@implementation ChartWindowController

-(void)awakeFromNib
{	
	
	InstrumentDao *instrumentDao=[InstrumentDao new];
	instruments=[instrumentDao getAllInstrument];
	[instrumentDao release];
	[InstrumentCombo setUsesDataSource:YES];
	[InstrumentCombo setDataSource:self];
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


- (IBAction)displayChart:(id)sender {
	NSLog(@"Display Chart");
	//NSLog(@"Min%f",[min floatValue]);
    //NSLog(@"Max%f",[max floatValue]);
	Instrument *instrument;
	instrument=[instruments objectAtIndex:[InstrumentCombo indexOfSelectedItem]];
    NSLog(@"Isin Code:%@",instrument.code);
	PriceDao *priceDao=[PriceDao new];
	NSArray *prices;
	prices=[priceDao getPricesForInstrument:instrument.code sorting:@"asc"];
	[ChartView setDatapoints:prices];
	//[ChartView drawChart:instrument.code min:[NSNumber numberWithFloat:[min floatValue]] max:[NSNumber numberWithFloat:[max floatValue]]];
	[ChartView drawChart];
	//NSLog(@"Min value:%@",[ChartView minValue]);
	//NSLog(@"Max value:%@",[ChartView maxValue]);
	//[min setFloatValue:[ChartView minValue]];
	//[max setFloatValue:[ChartView maxValue]];
	//[ChartView setNeedsDisplay:YES];
	NSLog(@"Finish Draw Chart");
}


- (void)windowWillClose:(NSNotification *)notification {
	
	NSLog(@"Chart Window will close");
	[self release];
}



-(void)dealloc {
	NSLog(@"dealloc Chart Window");
	[ [self window] release];
	[super dealloc];
}


@end
