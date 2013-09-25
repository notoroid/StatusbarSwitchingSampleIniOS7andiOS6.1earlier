
iOS7 SDK is now that the UI, including the status bar becomes a layer structure and iOS6 SDK, the status bar area was filled originally spread.

It can be placed on the UI by these factors are taken into account in the application of iOS7 or later, you must use ingenuity to build the app while keeping compatibility with iOS6.1 before using iOS7 SDK.

In this sample,

Use 1) Storyboard.
2) Autolayout unused.

And it is with the sample code when you build in iOS7 SDK (xcode5) since the project conditions, make an arrangement that takes into account the position of the status bar.


[Japanese]
iOS7 SDK は、iOS6 SDKとはステータスバーを含めたUIがレイヤー構造となり、本来ステータスバーが埋めていた領域が広がることになりました。

iOS7 以降のアプリではこれらを考慮してUIを配置可能ですが、iOS7 SDKを使ってiOS6.1以前との互換性を保った状態でアプリをビルドするには工夫が必要です。

このサンプルでは、

1) Storyboard を使用。
2) Autolayout未使用 。

の条件のプロジェクトをiOS7 SDK（xcode5)以降でビルドした場合に、ステータスバーの位置を考慮した配置を行うサンプルコードをとなっています。
