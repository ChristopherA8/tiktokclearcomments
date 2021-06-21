#include "TTCCRootListController.h"
#include <spawn.h>

@implementation TTCCRootListController

- (instancetype)init {
    self = [super init];

    if (self) {
        self.applyButton = [[UIBarButtonItem alloc] initWithTitle:@"Apply"
                                    style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(killApp)];
        self.navigationItem.rightBarButtonItem = self.applyButton;
        self.navigationItem.titleView = [UIView new];
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,10,10)];
        self.titleLabel.font = [UIFont boldSystemFontOfSize:17];
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        self.titleLabel.text = @"TikTok Clear Comments";
        [self.navigationItem.titleView addSubview:self.titleLabel];


        [NSLayoutConstraint activateConstraints:@[
            [self.titleLabel.topAnchor constraintEqualToAnchor:self.navigationItem.titleView.topAnchor],
            [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.navigationItem.titleView.leadingAnchor],
            [self.titleLabel.trailingAnchor constraintEqualToAnchor:self.navigationItem.titleView.trailingAnchor],
            [self.titleLabel.bottomAnchor constraintEqualToAnchor:self.navigationItem.titleView.bottomAnchor],
        ]];
	}
	return self;
}

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)killApp {
	pid_t pid;
	int status;
	char *args[] = {
		"killall",
		"-9",
		"TikTok",
		NULL
	};
	posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
	waitpid(pid, &status, WEXITED);
}

-(void)discord {
	NSURL *discord = [NSURL URLWithString:@"https://discord.gg/zHN7yuGqYr"];
	[[UIApplication sharedApplication] openURL:discord options:@{} completionHandler:nil];
}

-(void)paypal {
	NSURL *paypal = [NSURL URLWithString:@"https://paypal.me/chr1sdev"];
	[[UIApplication sharedApplication] openURL:paypal options:@{} completionHandler:nil];
}

-(void)sourceCode {
	NSURL *source = [NSURL URLWithString:@"https://github.com/Chr1sDev/tiktokclearcomments"];
	[[UIApplication sharedApplication] openURL:source options:@{} completionHandler:nil];
}

@end
