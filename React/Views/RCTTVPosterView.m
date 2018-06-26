//
//  RCTTVPosterView.m
//  DoubleConversion
//
//  Created by Douglas Lowder on 6/25/18.
//

#import "RCTTVPosterView.h"
#import "UIView+React.h"

@implementation RCTTVPosterView

- (UIImage *)imageWithImage:(UIImage *)image scaledToFillSize:(CGSize)size
{
    CGFloat scale = MAX(size.width/image.size.width, size.height/image.size.height);
    CGFloat width = image.size.width * scale;
    CGFloat height = image.size.height * scale;
    CGRect imageRect = CGRectMake((size.width - width)/2.0f,
                                  (size.height - height)/2.0f,
                                  width,
                                  height);
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    [image drawInRect:imageRect];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

-(void)setImageURL:(NSString *)imageURL {
    _imageURL = [imageURL copy];
    if (_imageURL) {
        UIImage *originalImage = [UIImage imageNamed:_imageURL];
        self.image = [self imageWithImage:originalImage scaledToFillSize:CGSizeMake(128, 128)];
    } else {
        self.image = nil;
    }
}

@end
