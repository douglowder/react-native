//
//  RCTTVPosterView.m
//  DoubleConversion
//
//  Created by Douglas Lowder on 6/25/18.
//

#import "RCTTVPosterView.h"
#import "UIView+React.h"

@implementation RCTTVPosterView

-(void)setImageURL:(NSString *)imageURL {
    _imageURL = [imageURL copy];
    if (_imageURL) {
        self.image = [UIImage imageNamed:_imageURL];
        self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), 200, 200);
    } else {
        self.image = nil;
    }
}

@end
