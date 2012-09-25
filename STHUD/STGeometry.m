//
//  STGeometry.m
//  STHUD
//
//  Copyright (c) 2012 Scott Talbot. All rights reserved.
//

#import "STGeometry.h"


CGPoint STPointIntegral(CGPoint point) {
    point.x = floorf(point.x);
    point.y = floorf(point.y);
    return point;
}


enum {
    STRectAlignOptionsMaskX = 0x0f,
    STRectAlignOptionsMaskY = 0xf0,
};


CGRect STRectAlign(CGRect outer, CGRect rect, STRectAlignOptions options) {
    switch (options & STRectAlignOptionsMaskX) {
        case STRectAlignXLeft:
            rect.origin.x = outer.origin.x;
            break;
        case STRectAlignXCenter:
            rect.origin.x = outer.origin.x + (outer.size.width - rect.size.width) / 2.f;
            break;
        case STRectAlignXRight:
            rect.origin.x = outer.origin.x + outer.size.width - rect.size.width;
            break;
        default:
            NSCAssert(0, @"Unhandled alignment options: %d", options & STRectAlignOptionsMaskX);
            break;
    }

    switch (options & STRectAlignOptionsMaskY) {
        case STRectAlignYTop:
            rect.origin.y = outer.origin.y;
            break;
        case STRectAlignYCenter:
            rect.origin.y = outer.origin.y + (outer.size.height - rect.size.height) / 2.f;
            break;
        case STRectAlignYBottom:
            rect.origin.y = outer.origin.y + outer.size.height - rect.size.height;
            break;
        default:
            NSCAssert(0, @"Unhandled alignment options: %d", options & STRectAlignOptionsMaskY);
            break;
    }

    return rect;
}


CGRect STRectCenter(CGRect outer, CGRect rect) {
    return STRectAlign(outer, rect, STRectAlignXCenter|STRectAlignYCenter);
}


CGPathRef STRoundedRectPathCreate(CGRect rect, CGFloat cornerRadius) {
    CGPoint min = CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect));
    CGPoint mid = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
    CGPoint max = CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect));

    CGMutablePathRef path = CGPathCreateMutable();

    CGPathMoveToPoint(path, NULL, min.x, mid.y);
    CGPathAddArcToPoint(path, NULL, min.x, min.y, mid.x, min.y, cornerRadius);
    CGPathAddArcToPoint(path, NULL, max.x, min.y, max.x, mid.y, cornerRadius);
    CGPathAddArcToPoint(path, NULL, max.x, max.y, mid.x, max.y, cornerRadius);
    CGPathAddArcToPoint(path, NULL, min.x, max.y, min.x, mid.y, cornerRadius);

    CGPathCloseSubpath(path);

    return path;
}
