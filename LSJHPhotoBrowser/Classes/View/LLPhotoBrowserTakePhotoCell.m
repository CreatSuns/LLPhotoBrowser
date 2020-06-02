//
//  LLPhotoBrowserTakePhotoCell.m
//
//  Created by 李世航 on 2019/11/15.
//

#import "LLPhotoBrowserTakePhotoCell.h"

@interface LLPhotoBrowserTakePhotoCell ()
@property (nonatomic, strong) UIImageView * imageView;
@end

@implementation LLPhotoBrowserTakePhotoCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.imageView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = self.contentView.frame;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (UIImageView *)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_add_photo"]];
    }
    return _imageView;
}

@end
