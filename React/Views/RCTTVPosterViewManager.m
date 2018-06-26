//
//  RCTTVPosterViewManager.m
//  DoubleConversion
//
//  Created by Douglas Lowder on 6/25/18.
//

#import "RCTTVPosterViewManager.h"
#import "RCTTVPosterView.h"

@implementation RCTTVPosterViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    RCTTVPosterView *v = [RCTTVPosterView new];
    v.backgroundColor = [UIColor blueColor];
    v.frame = CGRectMake(0, 0, 100, 100);
    return v;
}

RCT_EXPORT_VIEW_PROPERTY(title, NSString *)
RCT_EXPORT_VIEW_PROPERTY(subtitle, NSString *)
RCT_EXPORT_VIEW_PROPERTY(imageURL, NSString *)

@end
