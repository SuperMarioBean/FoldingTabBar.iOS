// For License please refer to LICENSE file in the root of YALAnimatingTabBarController project

#import "YALFourthTestViewController.h"
#import "AppDelegate.h"
#import "YALFoldingTabBarController.h"

#define debug 1

@implementation YALFourthTestViewController

#pragma mark - YALTabBarInteracting

- (void)tabBarViewWillCollapse {
    if (debug == 1) {
        NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
    }
}

- (void)tabBarViewWillExpand {
    if (debug == 1) {
        NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
    }
}

- (void)tabBarViewDidCollapse {
    if (debug == 1) {
        NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
    }
}

- (void)tabBarViewDidExpand {
    if (debug == 1) {
        NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
    }
}

- (IBAction)hide:(id)sender {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
       YALFoldingTabBarController *tabBarController = (YALFoldingTabBarController *) delegate.window.rootViewController;
    [tabBarController.tabBarView hideTabBarView:!tabBarController.tabBarView.hidden
                                     completion:^(BOOL finished) {
        
    }];
}


@end
