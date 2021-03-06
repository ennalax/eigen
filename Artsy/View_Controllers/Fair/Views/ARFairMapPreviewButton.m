#import "ARFairMapPreviewButton.h"

#import "ARFairMapPreview.h"
#import "ARFonts.h"
#import "Map.h"

#import <FLKAutoLayout/UIView+FLKAutoLayout.h>

@interface ARFairMapPreviewButton ()
@end


@implementation ARFairMapPreviewButton

- (instancetype)initWithFrame:(CGRect)frame
{
    NSAssert(FALSE, @"Use initWithFrame:map");

    return [self initWithFrame:frame map:nil];
}

- (instancetype)initWithFrame:(CGRect)frame map:(Map *)map
{
    self = [super initWithFrame:frame];
    if (!self) return nil;

    [self setBorderColor:[UIColor artsyGrayMedium] forState:UIControlStateNormal];
    [self constrainHeight:@"85"];

    ARFairMapPreview *mapPreview = [[ARFairMapPreview alloc] initWithFairMap:map andFrame:frame];
    [self addSubview:mapPreview];
    [mapPreview alignToView:self];
    [mapPreview setZoomScale:mapPreview.minimumZoomScale animated:NO];

    _mapPreview = mapPreview;
    return self;
}

@end
