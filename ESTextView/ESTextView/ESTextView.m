//
//  ESTextView.m
//  ESTextView
//
//  Created by codeLocker on 2017/8/8.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ESTextView.h"
@interface ESTextView()
@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UILabel *placeholderLab;
@end
@implementation ESTextView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self loadUI];
    }
    return self;
}

#pragma mark - Load_UI
- (void)loadUI {
    [self addSubview:self.textView];
    [self.textView addSubview:self.placeholderLab];
}

#pragma mark - Setter && Getter
- (UITextView *)textView {
    if (!_textView) {
        _textView = [[UITextView alloc] initWithFrame:self.bounds];
        _textView.backgroundColor = [UIColor redColor];
    }
    return _textView;
}

- (UILabel *)placeholderLab {
    if (!_placeholderLab) {
        _placeholderLab = [[UILabel alloc] initWithFrame:self.textView.bounds];
        _placeholderLab.text = @"APPPP";
    }
    return _placeholderLab;
}

@end
