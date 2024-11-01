#import <Cordova/CDV.h>
#import <WebKit/WebKit.h>

@interface InlineMediaPlugin : CDVPlugin
@end

@implementation InlineMediaPlugin

- (void)pluginInitialize {
    if ([self.webView isKindOfClass:[WKWebView class]]) {
        WKWebView *wkWebView = (WKWebView *)self.webView;
        wkWebView.configuration.allowsInlineMediaPlayback = YES;
    }
}

@end