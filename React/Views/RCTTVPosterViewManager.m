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
    UIImage *originalImage = [UIImage imageNamed:v.imageURL];
    v.image = [v imageWithImage:originalImage scaledToFillSize:CGSizeMake(128, 128)];
    return [RCTTVPosterView new];
}

RCT_EXPORT_VIEW_PROPERTY(title, NSString *)
RCT_EXPORT_VIEW_PROPERTY(subtitle, NSString *)
RCT_EXPORT_VIEW_PROPERTY(imageURL, NSString *)

@end
