@interface AWECommentListViewController : UIViewController
@end

%hook AWECommentListViewController
-(void)viewDidLoad {
	%orig;
	self.view.alpha = 0.75;
}
%end