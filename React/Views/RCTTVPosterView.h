//
//  RCTTVPosterView.h
//  DoubleConversion
//
//  Created by Douglas Lowder on 6/25/18.
//

#import <UIKit/UIKit.h>
#import <TVUIKit/TVUIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RCTTVPosterView : TVPosterView

@property(nonatomic, nullable, copy) NSString *imageURL;

- (UIImage *)imageWithImage:(UIImage *)image scaledToFillSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
