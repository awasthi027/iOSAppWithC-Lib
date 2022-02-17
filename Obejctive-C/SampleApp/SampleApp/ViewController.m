//
//  ViewController.m
//  SampleApp
//
//  Created by Ashish Awasthi on 2/16/22.
//

#import "ViewController.h"
#import "HelloWorldIOS.h"
#import "OperationsIOS.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *helloWorldLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HelloWorldIOS *helloWorld = [HelloWorldIOS new];
    NSMutableString *text = [[NSMutableString alloc] initWithString: [helloWorld getHelloWorld]];
    
    OperationsIOS *operation = [OperationsIOS new];
    NSInteger item = (long)[operation sum:10 second:12];
    [text appendString:[NSString stringWithFormat:@"\nAdd Two Number: ==%ld",item]];
    item = (long)[operation mult:10 second:12];
    [text appendString:[NSString stringWithFormat:@"\nMulti Two Number: ==%ld",item]];
    item = (long)[operation div:10 second:12];
    [text appendString:[NSString stringWithFormat:@"\nDivide Two Number: ==%ld",item]];
    item = (long)[operation sub:10 second:12];
   [text appendString:[NSString stringWithFormat:@"\nSuntraction Two Number: ==%ld",item]];
    
    self.helloWorldLabel.text = text;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
