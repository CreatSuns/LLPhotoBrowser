//
//  LLPhotoBrowserDefine.h
//
//  Created by 李世航 on 2019/7/22.
//

#ifndef LLPhotoBrowserDefine_h
#define LLPhotoBrowserDefine_h

typedef NS_ENUM(NSUInteger, LLAssetMediaType) {
    LLAssetMediaTypeUnknown,
    LLAssetMediaTypeImage,
    LLAssetMediaTypeGif,
    LLAssetMediaTypeLivePhoto,
    LLAssetMediaTypeVideo,
    LLAssetMediaTypeAudio,
    LLAssetMediaTypeNetImage,
    LLAssetMediaTypeNetVideo,
};

//导出视频类型
typedef NS_ENUM(NSUInteger, LLExportVideoType) {
    //default
    LLExportVideoTypeMov,
    LLExportVideoTypeMp4,
};

//导出视频水印位置
typedef NS_ENUM(NSUInteger, LLWatermarkLocation) {
    LLWatermarkLocationTopLeft,
    LLWatermarkLocationTopRight,
    LLWatermarkLocationCenter,
    LLWatermarkLocationBottomLeft,
    LLWatermarkLocationBottomRight,
};

#define kInfoDict [NSBundle mainBundle].localizedInfoDictionary ?: [NSBundle mainBundle].infoDictionary
#define kAPPName [kInfoDict valueForKey:@"CFBundleDisplayName"] ?: [kInfoDict valueForKey:@"CFBundleName"]

#endif /* LLPhotoBrowserDefine_h */
