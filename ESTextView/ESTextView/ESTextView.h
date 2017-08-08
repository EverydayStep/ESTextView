//
//  ESTextView.h
//  ESTextView
//
//  Created by codeLocker on 2017/8/8.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESTextView : UIView
@property (nonatomic, strong) UIFont *textFont;
@property (nonatomic, strong) UIFont *placeholderFont;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *placeholderColor;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *placeholder;
@property (nonatomic, strong) NSAttributedString *attributeText;
@property (nonatomic, strong) NSAttributedString *attributePlaceholder;
@property (nonatomic, assign) BOOL scrollEnabled;
@property (nonatomic, assign) BOOL showsVerticalScrollIndicator;
@property (nonatomic, assign) UIReturnKeyType returnKeyType;
@property (nonatomic, assign) BOOL editable;
@property (nonatomic, strong) UIColor *tintColor;
@property (nonatomic, weak) id<UITextViewDelegate> delegate;

@end
