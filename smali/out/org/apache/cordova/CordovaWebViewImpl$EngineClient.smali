.class public Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;
.super Ljava/lang/Object;
.source "CordovaWebViewImpl.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine$Client;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/CordovaWebViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EngineClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaWebViewImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/cordova/CordovaWebViewImpl;)V
    .registers 2
    .param p1, "this$0"    # Lorg/apache/cordova/CordovaWebViewImpl;

    .prologue
    .line 491
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLoadTimeoutTimer()V
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebViewImpl;->access$108(Lorg/apache/cordova/CordovaWebViewImpl;)I

    .line 495
    return-void
.end method

.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 554
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 555
    .local v2, "keyCode":I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1e

    move v1, v3

    .line 556
    .local v1, "isBackButton":Z
    :goto_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_44

    .line 557
    if-eqz v1, :cond_20

    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v4}, Lorg/apache/cordova/CordovaWebViewImpl;->access$400(Lorg/apache/cordova/CordovaWebViewImpl;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 558
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 595
    :goto_1d
    return-object v3

    .line 555
    .end local v1    # "isBackButton":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_9

    .line 559
    .restart local v1    # "isBackButton":Z
    :cond_20
    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v4}, Lorg/apache/cordova/CordovaWebViewImpl;->access$300(Lorg/apache/cordova/CordovaWebViewImpl;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 560
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1d

    .line 561
    :cond_35
    if-eqz v1, :cond_9c

    .line 562
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    iget-object v3, v3, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaWebViewEngine;->canGoBack()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1d

    .line 564
    :cond_44
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_9c

    .line 565
    if-eqz v1, :cond_5e

    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v4}, Lorg/apache/cordova/CordovaWebViewImpl;->access$400(Lorg/apache/cordova/CordovaWebViewImpl;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 566
    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-virtual {v4}, Lorg/apache/cordova/CordovaWebViewImpl;->hideCustomView()V

    .line 567
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1d

    .line 568
    :cond_5e
    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v4}, Lorg/apache/cordova/CordovaWebViewImpl;->access$300(Lorg/apache/cordova/CordovaWebViewImpl;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "eventName":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_9e

    .line 587
    :goto_72
    if-eqz v0, :cond_9c

    .line 588
    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v4, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->access$500(Lorg/apache/cordova/CordovaWebViewImpl;Ljava/lang/String;)V

    .line 589
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1d

    .line 572
    :sswitch_7e
    const-string v0, "volumedownbutton"

    .line 573
    goto :goto_72

    .line 575
    :sswitch_81
    const-string v0, "volumeupbutton"

    .line 576
    goto :goto_72

    .line 578
    :sswitch_84
    const-string v0, "searchbutton"

    .line 579
    goto :goto_72

    .line 581
    :sswitch_87
    const-string v0, "menubutton"

    .line 582
    goto :goto_72

    .line 584
    :sswitch_8a
    const-string v0, "backbutton"

    goto :goto_72

    .line 591
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_8d
    if-eqz v1, :cond_9c

    .line 592
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    iget-object v3, v3, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaWebViewEngine;->goBack()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1d

    .line 595
    :cond_9c
    const/4 v3, 0x0

    goto :goto_1d

    .line 570
    :sswitch_data_9e
    .sparse-switch
        0x4 -> :sswitch_8a
        0x18 -> :sswitch_81
        0x19 -> :sswitch_7e
        0x52 -> :sswitch_87
        0x54 -> :sswitch_84
    .end sparse-switch
.end method

.method public onNavigationAttempt(Ljava/lang/String;)Z
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 601
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v2}, Lorg/apache/cordova/CordovaWebViewImpl;->access$000(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/cordova/PluginManager;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 610
    :goto_e
    return v0

    .line 603
    :cond_f
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v2}, Lorg/apache/cordova/CordovaWebViewImpl;->access$000(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/cordova/PluginManager;->shouldAllowNavigation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v1

    .line 604
    goto :goto_e

    .line 605
    :cond_1d
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v2}, Lorg/apache/cordova/CordovaWebViewImpl;->access$000(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/cordova/PluginManager;->shouldOpenExternalUrl(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 606
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Lorg/apache/cordova/CordovaWebViewImpl;->showWebPage(Ljava/lang/String;ZZLjava/util/Map;)V

    goto :goto_e

    .line 609
    :cond_34
    const-string v1, "CordovaWebViewImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocked (possibly sub-frame) navigation to non-allowed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onPageFinishedLoading(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 521
    const-string v1, "CordovaWebViewImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->clearLoadTimeoutTimer()V

    .line 526
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v1}, Lorg/apache/cordova/CordovaWebViewImpl;->access$000(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;

    move-result-object v1

    const-string v2, "onPageFinished"

    invoke-virtual {v1, v2, p1}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    iget-object v1, v1, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_47

    .line 530
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient$1;-><init>(Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 543
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 547
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_47
    const-string v1, "about:blank"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 548
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v1}, Lorg/apache/cordova/CordovaWebViewImpl;->access$000(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;

    move-result-object v1

    const-string v2, "exit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_5b
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .registers 5
    .param p1, "newUrl"    # Ljava/lang/String;

    .prologue
    .line 499
    const-string v0, "CordovaWebViewImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageDidNavigate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebViewImpl;->access$300(Lorg/apache/cordova/CordovaWebViewImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 501
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebViewImpl;->access$000(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/cordova/PluginManager;->onReset()V

    .line 502
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebViewImpl;->access$000(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;

    move-result-object v0

    const-string v1, "onPageStarted"

    invoke-virtual {v0, v1, p1}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    return-void
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 507
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->clearLoadTimeoutTimer()V

    .line 508
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 510
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_8
    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 511
    const-string v2, "description"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string v2, "url"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_17} :catch_23

    .line 516
    :goto_17
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v2}, Lorg/apache/cordova/CordovaWebViewImpl;->access$000(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;

    move-result-object v2

    const-string v3, "onReceivedError"

    invoke-virtual {v2, v3, v0}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    return-void

    .line 513
    :catch_23
    move-exception v1

    .line 514
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17
.end method
