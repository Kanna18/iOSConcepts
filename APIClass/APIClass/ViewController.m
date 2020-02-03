//
//  ViewController.m
//  APIClass
//
//  Created by Dineshkumar kothuri on 03/02/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    https://rss.itunes.apple.com/api/v1/us/tv-shows/top-tv-episodes/all/10/explicit.rss
    
//
//    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
//
//
//    NSURL *url = [NSURL URLWithString:@"https://rss.itunes.apple.com/api/v1/us/tv-shows/top-tv-episodes/all/10/explicit.json"];
//    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:url];
//
//    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//
//        NSError *error1;
//        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:2 error:&error1];
//        NSLog(@"%@",dict);
//
//    }];
//    [dataTask resume];
    
    
    
    
    
    
//    NSURLSessionTask
    
//    NSURLSessionDataTask
//    NSURLSessionUploadTask
//    NSURLSessionDownloadTask
    
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
    
    NSURL *url = [NSURL URLWithString:@"https://rss.itunes.apple.com/api/v1/us/tv-shows/top-tv-episodes/all/10/explicit.json"];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:url];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
      
        NSError *readingError;
        NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&readingError];
        
    }];
    [dataTask resume];
    
}




@end
