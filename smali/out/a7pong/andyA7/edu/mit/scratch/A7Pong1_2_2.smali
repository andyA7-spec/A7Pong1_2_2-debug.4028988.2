.class public La7pong/andyA7/edu/mit/scratch/A7Pong1_2_2;
.super Lorg/apache/cordova/CordovaActivity;
.source "A7Pong1_2_2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/cordova/CordovaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, La7pong/andyA7/edu/mit/scratch/A7Pong1_2_2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1a

    const-string v1, "cdvStartInBackground"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, La7pong/andyA7/edu/mit/scratch/A7Pong1_2_2;->moveTaskToBack(Z)Z

    .line 39
    :cond_1a
    iget-object v1, p0, La7pong/andyA7/edu/mit/scratch/A7Pong1_2_2;->launchUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, La7pong/andyA7/edu/mit/scratch/A7Pong1_2_2;->loadUrl(Ljava/lang/String;)V

    .line 40
    return-void
.end method
