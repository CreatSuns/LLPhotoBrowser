//
//  LLPhotoBrowserNav.m
//
//  Created by 李世航 on 2018/11/29.
//

#import "LLPhotoBrowser.h"
#import "LLPhotoBrowserAlbum.h"
#import "LLPhotoBrowserManager.h"

@interface LLPhotoBrowser ()

@end

@implementation LLPhotoBrowser

- (instancetype)init
{
    LLPhotoBrowserAlbum * album = [[LLPhotoBrowserAlbum alloc] init];
    self                         = [super initWithRootViewController:album];
    if (self) {
        _config = [LLPhotoBrowserConfig defaultPhotoBrowserConfig];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    //    [[LLPhotoBrowserManager sharedPhotoBrowserManager] stopAllCacheAsset];
}

- (void)dealloc
{
    NSLog(@"调用了图片viewcontroll----0");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before
navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
