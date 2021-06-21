#import <Cephei/HBPreferences.h>

HBPreferences *preferences;

@interface AWECommentListViewController : UIViewController
@end

%hook AWECommentListViewController
-(void)viewDidLoad {
	%orig;
	if ([preferences boolForKey:@"enabled"]) return;
	self.view.alpha = [preferences floatForKey:@"alpha"] ? [preferences floatForKey:@"alpha"] : 0.75;
}
%end

%ctor {
	preferences = [[HBPreferences alloc] initWithIdentifier:@"com.chr1s.tiktokclearcommentsprefs"];
}