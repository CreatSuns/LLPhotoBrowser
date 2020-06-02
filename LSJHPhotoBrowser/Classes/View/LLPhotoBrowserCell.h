//
//  ImagePickerCollectionViewCell.h
//  ImagePickerDemo
//
//  Created by 李世航 on 2018/6/14.
//  Copyright © 2018年 WeiYiAn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LLPhotoBrowserModel;

@interface LLPhotoBrowserCell : UICollectionViewCell

@property (nonatomic, strong) LLPhotoBrowserModel * model;
@property (nonatomic, strong) UIImageView * imageV;

@property (nonatomic, copy) void (^selectImage)(LLPhotoBrowserModel * model, BOOL isSelect);

@end
