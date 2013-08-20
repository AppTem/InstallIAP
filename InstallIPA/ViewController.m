//
//  ViewController.m
//  InstallIPA
//
//  Created by Emck on 8/20/13.
//  Copyright (c) 2013 Apptem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSInteger ServerPort;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ServerPort = [Port.text intValue];
    if (ServerPort <=0) return;
    //Scan Port by Lan
    
    [self OnReload:nil];
}

- (IBAction)OnReload:(id)sender
{
    NSString *ServerName = Server.text;
    ServerPort = [Port.text intValue];
    if (ServerName == nil || ServerName.length <=0) return;
    NSString *Html;
    Html = [NSString stringWithFormat:@"<html><head><meta http-equiv=\"Content-Type\" content=\"text/HTML; charset=utf-8\"><meta content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\" name=\"viewport\" /><script type=\"text/javascript\">function doLocation(url){var a = document.createElement(\"a\");if(!a.click) {window.location = url;return;}a.setAttribute(\"href\", url);a.style.display = \"none\";document.body.appendChild(a);a.click();}</script></head><body> <script type=\"text/javascript\">doLocation('itms-services://?action=download-manifest&url=http://%@:%d/App.plist');</script></body></html>",ServerName,ServerPort];
    
    [webView loadHTMLString:Html baseURL:nil];
}

@end