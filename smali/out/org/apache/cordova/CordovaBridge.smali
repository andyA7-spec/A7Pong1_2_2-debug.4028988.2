.class public Lorg/apache/cordova/CordovaBridge;
.super Ljava/lang/Object;
.source "CordovaBridge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CordovaBridge"


# instance fields
.field private volatile expectedBridgeSecret:I

.field private jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

.field private pluginManager:Lorg/apache/cordova/PluginManager;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .registers 4
    .param p1, "pluginManager"    # Lorg/apache/cordova/PluginManager;
    .param p2, "jsMessageQueue"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/cordova/CordovaBridge;->expectedBridgeSecret:I

    .line 38
    iput-object p1, p0, Lorg/apache/cordova/CordovaBridge;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 39
    iput-object p2, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 40
    return-void
.end method

.method private verifySecret(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "bridgeSecret"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->isBridgeEnabled()Z

    move-result v0

    if-nez v0, :cond_44

    .line 87
    const/4 v0, -0x1

    if-ne p2, v0, :cond_25

    .line 88
    const-string v0, "CordovaBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call made before bridge was enabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_23
    const/4 v0, 0x0

    .line 100
    :goto_24
    return v0

    .line 90
    :cond_25
    const-string v0, "CordovaBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from previous page load."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 95
    :cond_44
    iget v0, p0, Lorg/apache/cordova/CordovaBridge;->expectedBridgeSecret:I

    if-ltz v0, :cond_4c

    iget v0, p0, Lorg/apache/cordova/CordovaBridge;->expectedBridgeSecret:I

    if-eq p2, v0, :cond_5c

    .line 96
    :cond_4c
    const-string v0, "CordovaBridge"

    const-string v1, "Bridge access attempt with wrong secret token, possibly from malicious code. Disabling exec() bridge!"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaBridge;->clearBridgeSecret()V

    .line 98
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0

    .line 100
    :cond_5c
    const/4 v0, 0x1

    goto :goto_24
.end method


# virtual methods
.method clearBridgeSecret()V
    .registers 2

    .prologue
    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/cordova/CordovaBridge;->expectedBridgeSecret:I

    .line 106
    return-void
.end method

.method generateBridgeSecret()I
    .registers 3

    .prologue
    .line 114
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 115
    .local v0, "randGen":Ljava/security/SecureRandom;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    iput v1, p0, Lorg/apache/cordova/CordovaBridge;->expectedBridgeSecret:I

    .line 116
    iget v1, p0, Lorg/apache/cordova/CordovaBridge;->expectedBridgeSecret:I

    return v1
.end method

.method public isSecretEstablished()Z
    .registers 3

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/cordova/CordovaBridge;->expectedBridgeSecret:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public jsExec(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "bridgeSecret"    # I
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "callbackId"    # Ljava/lang/String;
    .param p5, "arguments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 43
    const-string v2, "exec()"

    invoke-direct {p0, v2, p1}, Lorg/apache/cordova/CordovaBridge;->verifySecret(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 44
    const/4 v1, 0x0

    .line 65
    :goto_a
    return-object v1

    .line 48
    :cond_b
    if-nez p5, :cond_10

    .line 49
    const-string v1, "@Null arguments."

    goto :goto_a

    .line 52
    :cond_10
    iget-object v2, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/cordova/NativeToJsMessageQueue;->setPaused(Z)V

    .line 55
    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sput-object v2, Lorg/apache/cordova/CordovaResourceApi;->jsThread:Ljava/lang/Thread;

    .line 57
    iget-object v2, p0, Lorg/apache/cordova/CordovaBridge;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v2, p2, p3, p4, p5}, Lorg/apache/cordova/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "ret":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/cordova/NativeToJsMessageQueue;->popAndEncode(Z)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_28} :catch_2f
    .catchall {:try_start_16 .. :try_end_28} :catchall_3b

    move-result-object v1

    .line 67
    iget-object v2, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v2, v4}, Lorg/apache/cordova/NativeToJsMessageQueue;->setPaused(Z)V

    goto :goto_a

    .line 63
    .end local v1    # "ret":Ljava/lang/String;
    :catch_2f
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    const-string v1, ""
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_3b

    .line 67
    iget-object v2, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v2, v4}, Lorg/apache/cordova/NativeToJsMessageQueue;->setPaused(Z)V

    goto :goto_a

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_3b
    move-exception v2

    iget-object v3, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v3, v4}, Lorg/apache/cordova/NativeToJsMessageQueue;->setPaused(Z)V

    .line 68
    throw v2
.end method

.method public jsRetrieveJsMessages(IZ)Ljava/lang/String;
    .registers 4
    .param p1, "bridgeSecret"    # I
    .param p2, "fromOnlineEvent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 79
    const-string v0, "retrieveJsMessages()"

    invoke-direct {p0, v0, p1}, Lorg/apache/cordova/CordovaBridge;->verifySecret(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, p2}, Lorg/apache/cordova/NativeToJsMessageQueue;->popAndEncode(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public jsSetNativeToJsBridgeMode(II)V
    .registers 4
    .param p1, "bridgeSecret"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "setNativeToJsBridgeMode()"

    invoke-direct {p0, v0, p1}, Lorg/apache/cordova/CordovaBridge;->verifySecret(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 76
    :goto_8
    return-void

    .line 75
    :cond_9
    iget-object v0, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, p2}, Lorg/apache/cordova/NativeToJsMessageQueue;->setBridgeMode(I)V

    goto :goto_8
.end method

.method public promptOnJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x9

    const/4 v5, 0x3

    .line 125
    if-eqz p3, :cond_48

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_48

    const-string v0, "gap:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 128
    :try_start_13
    new-instance v6, Lorg/json/JSONArray;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 129
    .local v6, "array":Lorg/json/JSONArray;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 130
    .local v1, "bridgeSecret":I
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "service":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "action":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "callbackId":Ljava/lang/String;
    move-object v0, p0

    move-object v5, p2

    .line 133
    invoke-virtual/range {v0 .. v5}, Lorg/apache/cordova/CordovaBridge;->jsExec(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "r":Ljava/lang/String;
    if-nez v9, :cond_3b

    const-string v9, ""
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_3b} :catch_43

    .line 180
    .end local v1    # "bridgeSecret":I
    .end local v2    # "service":Ljava/lang/String;
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "callbackId":Ljava/lang/String;
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v9    # "r":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-object v9

    .line 135
    :catch_3c
    move-exception v8

    .line 136
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_40
    const-string v9, ""

    goto :goto_3b

    .line 137
    :catch_43
    move-exception v8

    .line 138
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_40

    .line 143
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :cond_48
    if-eqz p3, :cond_70

    const-string v0, "gap_bridge_mode:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 145
    const/16 v0, 0x10

    :try_start_54
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    .restart local v1    # "bridgeSecret":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/cordova/CordovaBridge;->jsSetNativeToJsBridgeMode(II)V
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_63} :catch_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_63} :catch_6b

    .line 152
    .end local v1    # "bridgeSecret":I
    :goto_63
    const-string v9, ""

    goto :goto_3b

    .line 147
    :catch_66
    move-exception v8

    .line 148
    .local v8, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_63

    .line 149
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_6b
    move-exception v8

    .line 150
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_63

    .line 155
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :cond_70
    if-eqz p3, :cond_98

    const-string v0, "gap_poll:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 156
    invoke-virtual {p3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 158
    .restart local v1    # "bridgeSecret":I
    :try_start_82
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/cordova/CordovaBridge;->jsRetrieveJsMessages(IZ)Ljava/lang/String;

    move-result-object v9

    .line 159
    .restart local v9    # "r":Ljava/lang/String;
    if-nez v9, :cond_3b

    const-string v9, ""
    :try_end_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_82 .. :try_end_90} :catch_91

    goto :goto_3b

    .line 160
    .end local v9    # "r":Ljava/lang/String;
    :catch_91
    move-exception v8

    .line 161
    .restart local v8    # "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 163
    const-string v9, ""

    goto :goto_3b

    .line 165
    .end local v1    # "bridgeSecret":I
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :cond_98
    if-eqz p3, :cond_ec

    const-string v0, "gap_init:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 168
    iget-object v0, p0, Lorg/apache/cordova/CordovaBridge;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginManager;->shouldAllowBridgeAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 170
    invoke-virtual {p3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 171
    .local v7, "bridgeMode":I
    iget-object v0, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, v7}, Lorg/apache/cordova/NativeToJsMessageQueue;->setBridgeMode(I)V

    .line 173
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaBridge;->generateBridgeSecret()I

    move-result v10

    .line 174
    .local v10, "secret":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3b

    .line 176
    .end local v7    # "bridgeMode":I
    .end local v10    # "secret":I
    :cond_d0
    const-string v0, "CordovaBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gap_init called from restricted origin: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v9, ""

    goto/16 :goto_3b

    .line 180
    :cond_ec
    const/4 v9, 0x0

    goto/16 :goto_3b
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/cordova/CordovaBridge;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->reset()V

    .line 121
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaBridge;->clearBridgeSecret()V

    .line 122
    return-void
.end method
