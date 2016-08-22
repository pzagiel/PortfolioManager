//
//  PriceChartView.m
//  PortfolioManager
//
//  Created by Patrick on 27/12/15.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "PriceChartView.h"
#import "Price.h"
#import "PriceDao.h"

#define kGraphHeight 300
#define kDefaultGraphWidth 900
#define kOffsetX 10
#define kStepX 50
#define kGraphBottom 300
#define kGraphTop 0
#define kStepY 50
#define kOffsetY 10
#define kCircleRadius 3



@implementation PriceChartView
@synthesize minValue;
@synthesize maxValue;
@synthesize datapoints;


- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}


- (CGColorRef)NSColorToCGColor:(NSColor *)color
{
    NSInteger numberOfComponents = [color numberOfComponents];
    CGFloat components[numberOfComponents];
    CGColorSpaceRef colorSpace = [[color colorSpace] CGColorSpace];
    [color getComponents:(CGFloat *)&components];
    CGColorRef cgColor = CGColorCreate(colorSpace, components);
	
    return cgColor;
}


- (void)computeMinMax:(NSArray*)prices 
{
	
	NSLog(@"Enter Min Max");
	Price *firstPrice=[prices objectAtIndex:1];
	minValue=firstPrice.value;
	maxValue=firstPrice.value;
	//for ( Price *price in prices)
	int numberOfData=[prices count];
	for (int i = 1; i < numberOfData; i++) 	
	{
		Price *price;
		price=[prices objectAtIndex:i];
		float priceValue=[price.value floatValue];
		NSLog(@"Before Test1");
		if(priceValue< [minValue floatValue])
			minValue=[NSNumber numberWithFloat:priceValue];
		NSLog(@"Before Test2");
		if(priceValue> [maxValue floatValue])
			maxValue=[NSNumber numberWithFloat:priceValue];
	}
	NSLog(@"After Test");
	float min=([minValue floatValue])*0.975;
	float max=([maxValue floatValue])*1.025;
	minValue=[NSNumber numberWithFloat:min];
	maxValue=[NSNumber numberWithFloat:max];
	NSLog(@"Min=%f Max=%f",[minValue  floatValue],[maxValue  floatValue]);
	
}

- (void)drawLineChart:(CGContextRef)ctx drawRect:(NSRect)rect
{
	//float data[] = {0.7, 0.4, 0.9, 1.0, 0.2, 0.85, 0.11, 0.75, 0.53, 0.44, 0.88, 0.77, 0.99, 0.55};
	float data[] = {0,100,110,105,122,100,92,85,125,185,185.6,202,175};
	int numberOfData=sizeof(data)/sizeof(float);
	float offsetByData=rect.size.width/(numberOfData-1);	
	
	
	// Get Price
	//NSMutableArray *prices;
	//PriceDao *priceDao=[PriceDao new];
	//prices=[priceDao getPricesForInstrument:isinCode sorting:@"asc"];
	//[prices retain];
    //[priceDao release];
	numberOfData=[datapoints count];
	offsetByData=rect.size.width/(numberOfData-1);
	
	
	
	NSColor *color = [NSColor colorWithDeviceRed:(231/255.0f) green:(68/255.0f) blue:(185/255.0f) alpha:1.0f];
	//NSColor *color= [NSColor redColor];

	CGContextSetLineWidth(ctx, 3.0); 
	CGContextSetStrokeColorWithColor(ctx,[self NSColorToCGColor:color]);
	int maxGraphHeight = kGraphHeight - kOffsetY;
	CGContextBeginPath(ctx);
	NSLog(@"Height of View:%d",rect.size.height);
    		// First Price
	Price *price;
	price=[datapoints objectAtIndex:1];
	float firstPriceValue=[price.value floatValue];
	//float range=[maxValue floatValue]-[minValue floatValue];
	[self computeMinMax:datapoints]; 
	//self.minValue=[NSNumber numberWithFloat: firstPriceValue*0.8];
	//self.maxValue=[NSNumber numberWithFloat: firstPriceValue*1.2];
    float range=[maxValue floatValue]-[minValue floatValue];
	NSLog(@"Range=%f",range);
    NSLog(@"Min=%f",[minValue floatValue]);
	NSLog(@"MAx=%f",[maxValue floatValue]);
	firstPriceValue=firstPriceValue-[minValue floatValue];
	CGContextMoveToPoint(ctx,0,firstPriceValue*(self.frame.size.height/range));
	NSLog(@"firstPriceValue:%f",firstPriceValue);
	for (int i = 1; i < numberOfData; i++) 
	 {
       
		 price=[datapoints objectAtIndex:i];
		 float priceValue=[price.value floatValue];
		 CGContextAddLineToPoint(ctx,i*offsetByData,(priceValue-[minValue floatValue])*(self.frame.size.height/range)+0);
		// NSLog(@"Point x=%i,y=%f",i*offsetByData,priceValue);
		 // add points
		 float x = i * offsetByData;
		 float y =(priceValue-[minValue floatValue])*(self.frame.size.height/range)+0;
		 CGRect pointRect = CGRectMake(x - kCircleRadius, y - kCircleRadius, 2 * kCircleRadius, 2 * kCircleRadius);
		 CGContextAddEllipseInRect(ctx, pointRect);
	 }
	CGContextDrawPath(ctx, kCGPathStroke);
	//[prices release];
/*	for (int i = 1; i < sizeof(data); i++) 
	{
		//CGContextAddLineToPoint(ctx, kOffsetX + i * kStepX, kGraphHeight - maxGraphHeight * data[i]);
		CGContextAddLineToPoint(ctx,i+50, priceValue);
	}*/
		
}

-(void) drawChart {
	//self.isinCode=isin;
	//self.minValue=minValue;
	//self.maxValue=maxValue;
	[self setNeedsDisplay:YES];
}

- (void)drawRect:(NSRect)rect {
	[[NSColor blackColor] setFill];
     NSRectFill(rect);

	CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
	[self drawLineChart:context drawRect:rect];
	[self drawGrid:context drawRect:rect];
	
}


- (float) convertToView:(float) y  viewRect:(NSRect)rect {
	float convertedValue;
	float range=[maxValue floatValue]-[minValue floatValue];
	convertedValue=(y-[minValue floatValue])*(self.frame.size.height/range);
	return convertedValue;
}

- (float) convertFromView:(float) y  viewRect:(NSRect)rect {
	float convertedValue;
	float range=[maxValue floatValue]-[minValue floatValue];
	convertedValue=(y*(range/self.frame.size.height))+[minValue floatValue];
	return convertedValue;
}


-(void) drawGrid:(CGContextRef)ctx drawRect:(NSRect)rect {
	
	
	
	//CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
	CGContextSetLineWidth(ctx, 0.6);
	NSColor * color;
	color = [NSColor whiteColor];
	CGContextSetStrokeColorWithColor(ctx,[self NSColorToCGColor:color]);
	// How many lines?
	int howMany = (rect.size.width - kOffsetX) / kStepX;
	int GraphTop=rect.size.height;
	int graphWidth=rect.size.width;
	// Here the lines go
/*	for (int i = 0; i < howMany; i++)
	{
		CGContextMoveToPoint(context, i * kStepX, kGraphTop);
		CGContextAddLineToPoint(context,i * kStepX, graphWidth);
	}*/
	
	
	
	
	float range=[maxValue floatValue]-[minValue floatValue];
	int steps;
	if(range<10) steps=1;
	if(range>30 && range<100) steps=10;
	if(range>100 && range<3000) steps=100;
	//int howManyHorizontal = (range) / steps;
	int howManyHorizontal=10;
	NSLog(@"Number of Lines=%i",howManyHorizontal);
	NSLog(@"Height of View=%f",self.frame.size.height);
	NSLog(@"stepValue=%f",rect.size.height/howManyHorizontal);
	float stepValue=self.frame.size.height/howManyHorizontal;
	float scaleFactor=self.frame.size.height/range;
	
	
	/*CGAffineTransform transform;
    transform = CGAffineTransformConcat(CGContextGetTextMatrix(ctx),
                                        CGAffineTransformMake(1.0, 0.0, 0.0,
                                                              1.0, 0.0, 0.0));
    CGContextSetTextMatrix(ctx, transform);*/
	
	//CGContextSetTextMatrix(ctx, CGAffineTransformIdentity); 

	
	for (int i = 0; i <= howManyHorizontal; i++)
	{
		//float yValue=i*labelStep*(GraphTop/range);
		CGContextMoveToPoint(ctx,0,i*stepValue);
				// Draw Y axe Labels
		CGContextSelectFont(ctx, "Helvetica", 1, kCGEncodingMacRoman);
		CGContextSetTextDrawingMode(ctx, kCGTextFill);
		CGContextSetFillColorWithColor(ctx, [self NSColorToCGColor:[NSColor whiteColor]]);
	    NSString *myString = @"";
		NSLog(@"Y value of Horizontal Line::%f",i*stepValue);
		NSLog(@"LabelValue:%f",[self convertFromView:i*stepValue viewRect:rect]);
		NSString *theText = [myString stringByAppendingString:[NSString stringWithFormat:@"%i",lroundf([self convertFromView:i*stepValue viewRect:rect])]];
		CGContextShowTextAtPoint(ctx, 0,i*stepValue, [theText cStringUsingEncoding:NSUTF8StringEncoding], [theText length]);
		CGContextAddLineToPoint(ctx, graphWidth,i*stepValue);

	}
	
	CGContextStrokePath(ctx);
	
}


- (BOOL)acceptsFirstResponder
{
    return YES;
}

- (BOOL)isFlipped {
	return NO;
}


- (IBAction)copy:(id)sender
{
	
    NSData *data;
    NSArray *myPboardTypes;
	
    //Set up the pasteboard
    NSPasteboard *pb = [NSPasteboard generalPasteboard];
	
    //Declare types of data you'll be putting onto the pasteboard
    myPboardTypes = [NSArray arrayWithObjects:NSStringPboardType,NSPDFPboardType,nil];
    [pb declareTypes:myPboardTypes owner:self];
		
    //copy the image into the pasteboard
    data = [self dataWithPDFInsideRect: [self bounds]];
    [pb setData:data forType:NSPDFPboardType];
}

- (NSData *)graphImage
{
	return [self dataWithPDFInsideRect:[self bounds]];
}

-(void)dealloc {
	NSLog(@"Dealloc Chart View");
	//[minValue release];
	//[maxValue release];
	//[datapoints release];
	[super dealloc];
}


@end
