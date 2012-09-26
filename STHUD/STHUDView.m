//
//  STHUDView.m
//  STHUD
//
//  Copyright (c) 2012 Scott Talbot. All rights reserved.
//

#import "STHUDView.h"

#import "STHUDViewImageData.h"

#import "STHUD.h"
#import "STGeometry.h"


static UIImage *gSTHUDViewSuccessImage = nil;
static UIImage *gSTHUDViewFailureImage = nil;


@implementation STHUDView {
@private
	__unsafe_unretained STHUD *_hud;

	enum STHUDState _state;
	UIActivityIndicatorView *_activityIndicatorView;
	UILabel *_titleLabel;
}

+ (void)initialize {
	if (self == [STHUDView class]) {
		NSData * const STHUDViewSuccessImageData = [[NSData alloc] initWithBytesNoCopy:(void *)STHUDViewSuccessImageBytes length:STHUDViewSuccessImageSize freeWhenDone:NO];
		gSTHUDViewSuccessImage = [[UIImage alloc] initWithData:STHUDViewSuccessImageData scale:2.f];
		NSData * const STHUDViewFailureImageData = [[NSData alloc] initWithBytesNoCopy:(void *)STHUDViewFailureImageBytes length:STHUDViewFailureImageSize freeWhenDone:NO];
		gSTHUDViewFailureImage = [[UIImage alloc] initWithData:STHUDViewFailureImageData scale:2.f];
	}
}

- (id)initWithFrame:(CGRect)frame {
	return [self initWithHUD:nil];
}

- (id)initWithHUD:(STHUD *)hud {
	NSParameterAssert(hud);
	if (!hud) {
		return nil;
	}

    if ((self = [super initWithFrame:CGRectMake(0, 0, 160, 120)])) {
        self.backgroundColor = [UIColor clearColor];
        self.opaque = NO;

		_hud = hud;

        _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        _activityIndicatorView.frame = STRectCenter(CGRectMake(0, 20, 160, 60), _activityIndicatorView.frame);
        _activityIndicatorView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin;
        [self addSubview:_activityIndicatorView];

        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 75, 160, 40)];
        _titleLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        _titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.textColor = [UIColor colorWithWhite:1 alpha:1];
        _titleLabel.shadowColor = [UIColor colorWithWhite:0 alpha:.75];
        _titleLabel.shadowOffset = CGSizeMake(0, .5);
        _titleLabel.textAlignment = UITextAlignmentCenter;
        _titleLabel.lineBreakMode = UILineBreakModeTailTruncation;
        [self addSubview:_titleLabel];

		self.state = hud.state;
		self.title = hud.title;
    }
    return self;
}


- (void)setState:(enum STHUDState)state {
    if (state != _state) {
        _state = state;
        switch (state) {
            case STHUDStateIndeterminate:
                [_activityIndicatorView startAnimating];
                _activityIndicatorView.hidden = NO;
                break;
            default:
                [_activityIndicatorView stopAnimating];
                _activityIndicatorView.hidden = YES;
                break;
        }
        [self setNeedsLayout];
        [self setNeedsDisplay];
    }
}

- (void)setTitle:(NSString *)title {
    _titleLabel.text = title;
    [self setNeedsLayout];
    [self setNeedsDisplay];
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    if (newSuperview) {
        self.frame = STRectCenter(newSuperview.bounds, self.frame);
	}
}


- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    CGPathRef roundedRectPath = STRoundedRectPathCreate(self.bounds, 16);
    CGContextAddPath(ctx, roundedRectPath);
    CGContextSetRGBFillColor(ctx, 0, 0, 0, .5);
    CGContextFillPath(ctx);
    CGPathRelease(roundedRectPath);

    [[UIColor whiteColor] set];

    switch (_state) {
        case STHUDStateIndeterminate:
            break;
        case STHUDStateSuccessful:
        case STHUDStateFailed: {
			UIImage * const image = _state == STHUDStateSuccessful ? gSTHUDViewSuccessImage : gSTHUDViewFailureImage;

            CGRect dingbatRect = (CGRect){ .size = (CGSize){ .width = 48, .height = 48 } };
            dingbatRect = STRectCenter(_activityIndicatorView.frame, dingbatRect);
			[image drawInRect:dingbatRect];
        }   break;
    }
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
	if (context == &_hud) {
		if ([@"state" isEqualToString:keyPath]) {
			self.state = _hud.state;
			return;
		}
		if ([@"title" isEqualToString:keyPath]) {
			self.title = _hud.title;
			return;
		}
	}

	[super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
}

@end
