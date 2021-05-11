
#import "RNAliShenfenyanzheng.h"

@implementation RNAliShenfenyanzheng

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getBizCode:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    [ZolozSdk init]; // 尽早初始化
    NSString *bizcode = [[APVerifyService sharedService] bizCode];
    resolve(bizcode);
}

RCT_EXPORT_METHOD(verifiy:(NSString *)url certifyId:(NSString *)certifyId bizCode:(NSString *)bizCode resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject) {
    [ZolozSdk init]; // 尽早初始化
    [[APVerifyService sharedService] startVerifyService:@{@"url": url?:@"",
                                                          @"certifyId": certifyId,
                                                          @"ext": @"test-extInfo",@"bizcode":bizCode}
                   target:self
                 block:^(NSMutableDictionary * resultDic){
                                                              NSLog(@"%@", resultDic);
                                                          }];
}
           
@end
  
