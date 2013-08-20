//
//  ViewController.h
//  InstallIPA
//
//  Created by Emck on 8/20/13.
//  Copyright (c) 2013 Apptem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIWebView *webView;
    IBOutlet UITextField *Server;
    IBOutlet UITextField *Port;
}

- (IBAction)OnReload:(id)sender;

@end