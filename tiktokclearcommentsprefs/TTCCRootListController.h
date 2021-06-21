#import <Preferences/PSListController.h>

@interface TTCCRootListController : PSListController
@property (nonatomic, retain) UIBarButtonItem *applyButton;
@property (nonatomic, retain) UILabel *titleLabel;
-(void)killApp;
-(void)discord;
-(void)paypal;
-(void)sourceCode;
@end
