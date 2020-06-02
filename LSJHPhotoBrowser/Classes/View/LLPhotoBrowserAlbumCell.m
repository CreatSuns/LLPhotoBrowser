//
//  LLPhotoBrowserAlbumCell.m
//
//  Created by 李世航 on 2018/12/7.
//

#import "LLPhotoBrowserAlbumCell.h"
#import "LLPhotoBrowserModel.h"
#import "LLPhotoBrowserManager.h"

@interface LLPhotoBrowserAlbumCell ()
@property (nonatomic, strong) UIImageView * imgView;
@property (nonatomic, strong) UILabel * titleLabel;
@end

@implementation LLPhotoBrowserAlbumCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.imgView];
        [self.contentView addSubview:self.titleLabel];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.imgView mas_remakeConstraints:^(MASConstraintMaker * make) {
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.left.mas_equalTo(self.contentView.mas_left).mas_equalTo(16 * SizeAdapter);
        make.size.mas_equalTo(CGSizeMake(40 * SizeAdapter, 40 * SizeAdapter));
    }];

    [self.titleLabel mas_remakeConstraints:^(MASConstraintMaker * make) {
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.left.mas_equalTo(self.imgView.mas_right).with.offset(10 * SizeAdapter);
        make.right.mas_equalTo(self.contentView.mas_right);
        make.height.mas_equalTo(20 * SizeAdapter);
    }];
}

#pragma mark ======= Setter
- (void)setModel:(LLPhotoBrowserAlbumModel *)model
{
    if (model) {
        self.titleLabel.text = [NSString stringWithFormat:@"%@(%ld)", model.title, model.count];
        [[LLPhotoBrowserManager sharedPhotoBrowserManager] requestImageForAsset:model.headImageAsset
                                                                            size:CGSizeMake(40, 40)
                                                                 progressHandler:nil
                                                                      completion:^(UIImage * image, NSDictionary * info) {
                                                                          self.imgView.image = image;
                                                                      }];
    }
}

#pragma mark ======= Getter
- (UIImageView *)imgView
{
    if (!_imgView) {
        _imgView = ({
            UIImageView * object       = [[UIImageView alloc] init];
            object.layer.cornerRadius  = 2.f;
            object.layer.masksToBounds = YES;
            object.contentMode         = UIViewContentModeScaleAspectFill;
            object.image               = [UIImage ll_loadBundleImage:@"icon_photo" ClassName:NSStringFromClass(self.class) bundleName:@"LSJHPhotoBrowser"];
            object;
        });
    }
    return _imgView;
}

- (UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = ({
            UILabel * object = [[UILabel alloc] init];
            object.textColor = [UIColor blackColor];
            object.font      = FONT(15);
            object;
        });
    }
    return _titleLabel;
}
@end
