//
//  LLPhotoBrowserModel.m
//
//  Created by 李世航 on 2018/11/15.
//

#import "LLPhotoBrowserModel.h"

@implementation LLPhotoBrowserAlbumModel

@end

@implementation LLPhotoBrowserModel

+ (instancetype)modelWithAsset:(PHAsset *)asset type:(LLAssetMediaType)type duration:(NSString *)duration
{
    LLPhotoBrowserModel * model = [[LLPhotoBrowserModel alloc] init];
    model.asset                  = asset;
    model.type                   = type;
    model.duration               = duration;
    model.selected               = NO;
    return model;
}

- (NSInteger)videoLength{
    NSInteger length = (NSInteger)round(self.asset.duration);
    return length;
}

- (void)setSelected:(BOOL)selected
{
    _selected = selected;
    if (selected) {
    }
}
@end
