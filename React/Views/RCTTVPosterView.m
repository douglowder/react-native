/**
 * Copyright (c) 2018-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "RCTTVPosterView.h"
#import "UIView+React.h"

@implementation RCTTVPosterView

-(void)setImageURL:(NSString *)imageURL {
    _imageURL = [imageURL copy];
    if (_imageURL) {
        self.image = [UIImage imageNamed:_imageURL];
    } else {
        self.image = nil;
    }
}

@end
