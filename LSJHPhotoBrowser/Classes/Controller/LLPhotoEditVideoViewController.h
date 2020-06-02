//
//  LLPhotoEditVideoViewController.h
//
//  Created by 李世航 on 2019/5/22.
//

#import <UIKit/UIKit.h>
@class LLPhotoBrowserModel;
NS_ASSUME_NONNULL_BEGIN

@interface LLPhotoEditVideoViewController : UIViewController
@property (nonatomic, strong) LLPhotoBrowserModel * model;
@property (nonatomic, copy) void (^editVideoFinishBlock)(LLPhotoBrowserModel * videoModel);
@end

NS_ASSUME_NONNULL_END
