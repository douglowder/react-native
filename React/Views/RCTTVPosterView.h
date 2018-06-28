/**
 * Copyright (c) 2018-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <UIKit/UIKit.h>
#import <TVUIKit/TVUIKit.h>

NS_ASSUME_NONNULL_BEGIN

API_AVAILABLE(tvos(12.0))
@interface RCTTVPosterView : TVPosterView

@property(nonatomic, nullable, copy) NSString *imageURL;

- (UIImage *)imageWithImage:(UIImage *)image scaledToFillSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
