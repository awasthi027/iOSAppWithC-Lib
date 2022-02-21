//
//  ViewController.m
//  SampleApp
//
//  Created by Ashish Awasthi on 2/16/22.
//

#import "ViewController.h"
#import "RootStaticLib.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *helloWorldLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    RootStaticLib *obj = [RootStaticLib new];
   
    NSMutableString *text = [[NSMutableString alloc] initWithString: [obj messageFromService:Gen1]];
    [text appendString:@"\n"];
    [text appendString:[obj messageFromService:Gen2]];
  
    self.helloWorldLabel.text = text;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
