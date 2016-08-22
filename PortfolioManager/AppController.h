#import <Cocoa/Cocoa.h>

@interface AppController :NSObject {
    
	IBOutlet id PriceWindow;
    IBOutlet id InstrumentCombo;
    IBOutlet id PriceTable;
    IBOutlet id Log ;
    IBOutlet id Hello; 
    NSMutableArray *instruments;
	NSMutableArray *prices;
	id WindowNib;
}
@end
