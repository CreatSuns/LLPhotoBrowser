//
//  LLPhotoEditViewController.h
//
//  Created by 李世航 on 2018/11/29.
//

#import <UIKit/UIKit.h>

@class LLPhotoBrowserModel;

NS_ASSUME_NONNULL_BEGIN

@interface LLPhotoEditPhotoViewController : UIViewController
@property (nonatomic, assign) NSInteger selectIndex;
@property (nonatomic, strong) NSMutableArray<LLPhotoBrowserModel *> * models;
@property (nonatomic, strong) NSMutableArray<LLPhotoBrowserModel *> * selectedModels;
@property (nonatomic, copy) void (^callback)(NSMutableArray<LLPhotoBrowserModel *> * array);

@end

NS_ASSUME_NONNULL_END
