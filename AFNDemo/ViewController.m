//
//  ViewController.m
//  AFNDemo
//
//  Created by xiyang on 16/3/7.
//  Copyright © 2016年 xiyang. All rights reserved.
//

#import "ViewController.h"
#import "XYNetworking.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //get和post请求数据🌰
    
    /*
     
    [XYNetworking GET:@"user/getbyimusername" baseURL:@"http://api.nongji360.com" params:dic success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSDictionary * dic = (NSDictionary*)responseObject;
        NSInteger status = [dic[@"status"]integerValue];
        
        NSLog(@"%i",status);
    } fail:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
    [XYNetworking GET:@"http://api.nongji360.com/user/getbyimusername" params:dic success:^(NSURLSessionDataTask *task, id responseObject) {
        NSDictionary * dic = (NSDictionary*)responseObject;
        NSInteger status = [dic[@"status"]integerValue];
        
        NSLog(@"%i",status);
    } fail:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
    [XYNetworking POST:@"user/getbyimusername" baseURL:@"http://api.nongji360.com" params:dic success:^(NSURLSessionDataTask *task, id responseObject) {
        NSDictionary * dic = (NSDictionary*)responseObject;
        NSInteger status = [dic[@"status"]integerValue];
        
        NSLog(@"%li",(long)status);
    } fail:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
    
    [XYNetworking POST:@"user/getbyimusername" baseURL:@"http://api.nongji360.com" params:dic success:^(NSURLSessionDataTask *task, id responseObject) {
        NSDictionary * dic = (NSDictionary*)responseObject;
        NSInteger status = [dic[@"status"]integerValue];
        
        NSLog(@"%i",status);
    } fail:^(NSURLSessionDataTask *task, NSError *error) {
         NSLog(@"%@",error);
    }];
    
    */
    
    
    //上传图片🌰
    
     UIImage *img = [UIImage imageNamed:@"1"];
     
     NSData *data = UIImageJPEGRepresentation(img, 0.5);
     
     NSDictionary *dic = @{
     @"timestamp" : @"1457403110",
     @"file"      : data,
     @"xtype"     :@"bang_album",
     @"token"     : @"8a3dead8022c6c85248efca767c9ecfaf8836617"
     
     
     };
    
    [XYNetworking uploadWithURL:@"upload.php" baseURL:@"http://img.nongji360.com" params:dic fileData:data name:@"Filedata" fileName:@"Filedata.jpg" mimeType:@"image/jpeg" progress:^(NSProgress *progress) {
        NSLog(@"%lli,%lli",progress.completedUnitCount,progress.totalUnitCount);
    } success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
    } fail:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
     
    
    
    //下载文件🌰
/*
     NSString *cachesPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
     NSURL *fileUrl = [NSURL fileURLWithPath:cachesPath];
     
     [XYNetworking downloadWithURL:@"http://120.25.226.186:32812/resources/videos/minion_02.mp4" savePathURL:fileUrl progress:^(NSProgress *progress) {
     NSLog(@"%lli,%lli",progress.completedUnitCount,progress.totalUnitCount);
     } success:^(NSURLResponse *response, NSURL *filePath) {
     
     NSString *string = filePath.absoluteString;
     NSLog(@"%@",string);
     
     } fail:^(NSError *error) {
     
     }];
    */
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
