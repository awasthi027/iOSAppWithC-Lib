//
//  ViewController.m
//  SampleApp
//
//  Created by Ashish Awasthi on 2/16/22.
//

#import "ViewController.h"
#import "AccessMathLib.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *helloWorldLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AccessMathLib *obj = [AccessMathLib new];
   
    NSMutableString *text = [[NSMutableString alloc] initWithString: [obj operationFromFirstPackage]];
    [text appendString:@"\n"];
    [text appendString:[obj operationFromSecondPackage]];
  
    self.helloWorldLabel.text = text;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
