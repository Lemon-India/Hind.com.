.class Lms/bd/o/Pgl/pbln$pgla;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor$IGetExtendParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lms/bd/o/Pgl/pbln;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lms/bd/o/Pgl/pbln;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lms/bd/o/Pgl/pbln$pgla;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lms/bd/o/Pgl/pbln$pgla;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommonParams()Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v6, "733bae"

    const/4 v8, 0x7

    const/4 v9, 0x6

    :try_start_0
    new-array v7, v8, [B

    const/16 v2, 0x29

    const/4 v10, 0x0

    aput-byte v2, v7, v10

    const/16 v2, 0x27

    const/4 v11, 0x1

    aput-byte v2, v7, v11

    const/16 v2, 0x45

    const/4 v12, 0x2

    aput-byte v2, v7, v12

    const/4 v13, 0x3

    const/4 v14, 0x4

    aput-byte v14, v7, v13

    const/16 v2, 0x4d

    aput-byte v2, v7, v14

    const/16 v2, 0x77

    const/4 v15, 0x5

    aput-byte v2, v7, v15

    const/16 v2, 0x35

    aput-byte v2, v7, v9

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lms/bd/o/Pgl/pbln$pgla;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const v16, 0x1000001

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-string v20, "cf939d"

    :try_start_1
    new-array v4, v8, [B

    const/16 v5, 0x7d

    aput-byte v5, v4, v10

    const/16 v5, 0x72

    aput-byte v5, v4, v11

    const/16 v5, 0x4f

    aput-byte v5, v4, v12

    const/16 v5, 0x55

    aput-byte v5, v4, v13

    const/16 v5, 0x15

    aput-byte v5, v4, v14

    const/16 v5, 0x76

    aput-byte v5, v4, v15

    const/16 v5, 0x61

    aput-byte v5, v4, v9

    move-object/from16 v21, v4

    invoke-static/range {v16 .. v21}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    const v12, 0x1000001

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-string v16, "803313"

    :try_start_2
    new-array v3, v11, [B

    const/16 v4, 0x78

    aput-byte v4, v3, v10

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_0
    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v12, 0x0

    const-string v14, "b1407d"

    :try_start_3
    new-array v15, v11, [B

    const/16 v5, 0x23

    aput-byte v5, v15, v10

    move v10, v3

    move v11, v4

    invoke-static/range {v10 .. v15}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    new-array v15, v9, [B

    fill-array-data v15, :array_0

    const v10, 0x1000001

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-string v14, "41424e"

    invoke-static/range {v10 .. v15}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    const/16 v2, 0x8

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "263efa"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lms/bd/o/Pgl/pbln$pgla;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    nop

    :array_0
    .array-data 1
        0x36t
        0x36t
        0x4at
        0x79t
        0xct
        0x61t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2bt
        0x3bt
        0x53t
        0x5t
        0x66t
        0x77t
        0x38t
        0x13t
    .end array-data
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
