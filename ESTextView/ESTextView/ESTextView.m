//
//  ESTextView.m
//  ESTextView
//
//  Created by codeLocker on 2017/8/8.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ESTextView.h"
#import <Masonry/Masonry.h>
@interface ESTextView()
@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UILabel *placeholderLab;
@end
@implementation ESTextView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self loadUI];
        [self layout];
        [self registerNotification];
    }
    return self;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notification_Methods
- (void)registerNotification {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:UITextViewTextDidChangeNotification object:nil];
}

- (void)textDidChange:(NSNotification *)notification {
    self.placeholderLab.hidden = self.textView.text.length > 0;
}

#pragma mark - Load_UI
- (void)loadUI {
    [self addSubview:self.textView];
    [self.textView addSubview:self.placeholderLab];
}

- (void)layout {
    [self.textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    [self.placeholderLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.textView).offset(5);
        make.top.equalTo(self.textView).offset(8);
    }];
}

#pragma mark - Setter && Getter
- (UITextView *)textView {
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        _textView.font = [UIFont systemFontOfSize:15];
    }
    return _textView;
}

- (UILabel *)placeholderLab {
    if (!_placeholderLab) {
        _placeholderLab = [[UILabel alloc] initWithFrame:self.textView.bounds];
        _placeholderLab.font = [UIFont systemFontOfSize:15];
    }
    return _placeholderLab;
}

- (void)setTextFont:(UIFont *)textFont {
    _textFont = textFont;
    self.textView.font = _textFont;
}

- (void)setPlaceholderFont:(UIFont *)placeholderFont {
    _placeholderFont = placeholderFont;
    self.placeholderLab.font = _placeholderFont;
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    self.textView.textColor = _textColor;
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    _placeholderColor = placeholderColor;
    self.placeholderLab.textColor = _placeholderColor;
}

- (void)setText:(NSString *)text {
    _text = text;
    self.textView.text = _text;
}

- (void)setPlaceholder:(NSString *)placeholder {
    _placeholder = placeholder;
    self.placeholderLab.text = placeholder;
}

- (void)setAttributeText:(NSAttributedString *)attributeText {
    _attributeText = attributeText;
    self.textView.attributedText = _attributeText;
}

- (void)setAttributePlaceholder:(NSAttributedString *)attributePlaceholder {
    _attributePlaceholder = attributePlaceholder;
    self.placeholderLab.attributedText = _attributePlaceholder;
}

- (void)setScrollEnabled:(BOOL)scrollEnabled {
    _scrollEnabled = scrollEnabled;
    self.textView.scrollEnabled = _scrollEnabled;
}

- (void)setShowsVerticalScrollIndicator:(BOOL)showsVerticalScrollIndicator {
    _showsVerticalScrollIndicator = showsVerticalScrollIndicator;
    self.textView.showsVerticalScrollIndicator = _showsVerticalScrollIndicator;
}

- (void)setReturnKeyType:(UIReturnKeyType)returnKeyType {
    _returnKeyType = returnKeyType;
    self.textView.returnKeyType = _returnKeyType;
}

- (void)setEditable:(BOOL)editable {
    _editable = editable;
    self.textView.editable = _editable;
}

- (void)setTintColor:(UIColor *)tintColor {
    _tintColor = tintColor;
    self.textView.tintColor = tintColor;
}

- (void)setDelegate:(id<UITextViewDelegate>)delegate {
    _delegate = delegate;
    self.textView.delegate = delegate;
}
@end
