.class public final Lms/bd/o/Pgl/pbln;
.super Lms/bd/o/Pgl/pblm;
.source ""


# instance fields
.field private b:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lms/bd/o/Pgl/pbln;->b:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorApiError(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lms/bd/o/Pgl/pbln;->b:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lms/bd/o/Pgl/pbln;->b:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 28

    move-object/from16 v0, p0

    invoke-static {}, Lms/bd/o/Pgl/pgla;->a()Lms/bd/o/Pgl/pgla;

    move-result-object v1

    invoke-virtual {v1}, Lms/bd/o/Pgl/pgla;->b()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v10, v3, [B

    fill-array-data v10, :array_0

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "b1d526"

    invoke-static/range {v5 .. v10}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v4, v2

    :goto_0
    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "3f2e27"

    const/16 v12, 0xa

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x1

    :try_start_1
    new-array v11, v13, [B

    const/16 v16, 0x31

    aput-byte v16, v11, v5

    const/16 v17, 0x60

    aput-byte v17, v11, v15

    const/16 v17, 0x4a

    const/16 v18, 0x2

    aput-byte v17, v11, v18

    const/16 v17, 0x2e

    aput-byte v17, v11, v3

    const/16 v19, 0xc

    const/16 v20, 0x4

    aput-byte v19, v11, v20

    const/16 v19, 0x29

    aput-byte v19, v11, v14

    const/16 v19, 0x34

    const/16 v21, 0x6

    aput-byte v19, v11, v21

    invoke-static/range {v6 .. v11}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "a19598"

    const/16 v7, 0x8

    :try_start_2
    new-array v8, v7, [B

    const/16 v9, 0x78

    aput-byte v9, v8, v5

    const/16 v9, 0x3c

    aput-byte v9, v8, v15

    const/16 v9, 0x59

    aput-byte v9, v8, v18

    const/16 v9, 0x55

    aput-byte v9, v8, v3

    const/16 v10, 0x39

    aput-byte v10, v8, v20

    aput-byte v17, v8, v14

    const/16 v10, 0x6b

    aput-byte v10, v8, v21

    const/16 v10, 0x14

    aput-byte v10, v8, v13

    move-object/from16 v27, v8

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "46cfcc"

    :try_start_3
    new-array v7, v12, [B

    const/16 v17, 0x26

    aput-byte v17, v7, v5

    const/16 v17, 0x3b

    aput-byte v17, v7, v15

    const/16 v17, 0x1e

    aput-byte v17, v7, v18

    aput-byte v10, v7, v3

    aput-byte v9, v7, v20

    const/16 v9, 0x73

    aput-byte v9, v7, v14

    aput-byte v18, v7, v21

    const/16 v9, 0x25

    aput-byte v9, v7, v13

    const/16 v10, 0x8

    aput-byte v17, v7, v10

    const/16 v10, 0x9

    aput-byte v9, v7, v10

    move-object/from16 v27, v7

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const v22, 0x1000001

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "460ac7"

    :try_start_4
    new-array v10, v12, [B

    const/16 v27, 0x37

    aput-byte v27, v10, v5

    aput-byte v16, v10, v15

    const/16 v16, 0x53

    aput-byte v16, v10, v18

    const/16 v16, 0x1a

    aput-byte v16, v10, v3

    const/16 v3, 0x4e

    aput-byte v3, v10, v20

    aput-byte v19, v10, v14

    aput-byte v18, v10, v21

    aput-byte v9, v10, v13

    const/16 v3, 0x4d

    const/16 v9, 0x8

    aput-byte v3, v10, v9

    const/16 v3, 0x22

    const/16 v9, 0x9

    aput-byte v3, v10, v9

    move-object/from16 v27, v10

    invoke-static/range {v22 .. v27}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6, v8}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->setConfigUrl(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v6, v11}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->setDefaultReportUrl(Ljava/lang/String;Ljava/util/List;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :cond_3
    return v5

    :catch_1
    move-object v3, v2

    move-object v2, v6

    goto :goto_3

    :catch_2
    move-object v3, v2

    :goto_3
    new-array v10, v14, [B

    fill-array-data v10, :array_1

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "fb349b"

    invoke-static/range {v5 .. v10}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v2

    move-object v2, v3

    :goto_4
    new-array v3, v12, [B

    fill-array-data v3, :array_2

    const v16, 0x1000001

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-string v20, "15de5d"

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-array v3, v12, [B

    fill-array-data v3, :array_3

    const-string v20, "961db1"

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lms/bd/o/Pgl/pbln$pgla;

    invoke-direct {v3, v0, v4, v2}, Lms/bd/o/Pgl/pbln$pgla;-><init>(Lms/bd/o/Pgl/pbln;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v1, v6, v4, v3}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor$IGetExtendParams;)V

    invoke-static {v6}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    move-result-object v1

    iput-object v1, v0, Lms/bd/o/Pgl/pbln;->b:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    return v15

    nop

    :array_0
    .array-data 1
        0x60t
        0x36t
        0x1at
    .end array-data

    :array_1
    .array-data 1
        0x64t
        0x65t
        0x4dt
        0x7ft
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x23t
        0x38t
        0x19t
        0x17t
        0x3t
        0x74t
        0x7t
        0x26t
        0x19t
        0x26t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3at
        0x31t
        0x52t
        0x1ft
        0x4ft
        0x32t
        0xft
        0x25t
        0x4ct
        0x27t
    .end array-data
.end method

.method public b(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lms/bd/o/Pgl/pbln;->b:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorSLA(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
