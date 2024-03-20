.class final Lms/bd/o/Pgl/d0;
.super Lms/bd/o/Pgl/pblb$pgla;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lms/bd/o/Pgl/pgla;->a()Lms/bd/o/Pgl/pgla;

    move-result-object v0

    invoke-virtual {v0}, Lms/bd/o/Pgl/pgla;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/16 v2, 0xd

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "4b6f46"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "e58dd2"

    const/16 v10, 0x24

    const/16 v11, 0x65

    const/16 v12, 0x75

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_0
    new-array v10, v10, [B

    const/16 v16, 0x73

    aput-byte v16, v10, v15

    const/16 v16, 0x32

    aput-byte v16, v10, v14

    const/16 v17, 0x5f

    aput-byte v17, v10, v13

    const/16 v17, 0x3

    const/16 v18, 0x39

    aput-byte v18, v10, v17

    const/16 v17, 0x55

    const/16 v18, 0x4

    aput-byte v17, v10, v18

    const/16 v17, 0x5

    const/16 v19, 0x36

    aput-byte v19, v10, v17

    const/16 v17, 0x72

    const/16 v20, 0x6

    aput-byte v17, v10, v20

    const/16 v17, 0x15

    const/16 v21, 0x7

    aput-byte v17, v10, v21

    const/16 v22, 0x8

    aput-byte v11, v10, v22

    const/16 v22, 0x9

    const/16 v23, 0x38

    aput-byte v23, v10, v22

    const/16 v22, 0xa

    const/16 v23, 0x71

    aput-byte v23, v10, v22

    const/16 v22, 0xb

    const/16 v23, 0x33

    aput-byte v23, v10, v22

    const/16 v22, 0xc

    const/16 v23, 0x6a

    aput-byte v23, v10, v22

    const/16 v22, 0x13

    aput-byte v22, v10, v2

    const/16 v2, 0xe

    const/16 v23, 0x58

    aput-byte v23, v10, v2

    const/16 v2, 0xf

    const/16 v23, 0x20

    aput-byte v23, v10, v2

    const/16 v2, 0x10

    aput-byte v12, v10, v2

    const/16 v2, 0x11

    aput-byte v21, v10, v2

    const/16 v2, 0x12

    const/16 v21, 0x60

    aput-byte v21, v10, v2

    aput-byte v19, v10, v22

    const/16 v2, 0x14

    const/16 v19, 0x7d

    aput-byte v19, v10, v2

    const/16 v2, 0x3b

    aput-byte v2, v10, v17

    const/16 v2, 0x42

    const/16 v17, 0x16

    aput-byte v2, v10, v17

    const/16 v19, 0x17

    aput-byte v18, v10, v19

    const/16 v18, 0x18

    aput-byte v2, v10, v18

    const/16 v2, 0x19

    aput-byte v17, v10, v2

    const/16 v17, 0x1a

    const/16 v18, 0x63

    aput-byte v18, v10, v17

    const/16 v17, 0x1b

    aput-byte v20, v10, v17

    const/16 v17, 0x1c

    const/16 v18, 0x7f

    aput-byte v18, v10, v17

    const/16 v17, 0x1d

    const/16 v18, 0x3d

    aput-byte v18, v10, v17

    const/16 v17, 0x1e

    const/16 v18, 0x77

    aput-byte v18, v10, v17

    const/16 v17, 0x1f

    aput-byte v16, v10, v17

    const/16 v16, 0x67

    aput-byte v16, v10, v23

    const/16 v16, 0x21

    aput-byte v2, v10, v16

    const/16 v2, 0x22

    const/16 v16, 0x48

    aput-byte v16, v10, v2

    const/16 v2, 0x23

    const/16 v16, 0x31

    aput-byte v16, v10, v2

    invoke-static/range {v5 .. v10}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v5, v15, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v4, v15, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "a9fdc8"

    :try_start_1
    new-array v9, v13, [B

    aput-byte v12, v9, v15

    const/16 v10, 0x2d

    aput-byte v10, v9, v14

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const v16, 0x1000001

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-string v20, "ac9eb9"

    :try_start_2
    new-array v4, v13, [B

    const/16 v5, 0x79

    aput-byte v5, v4, v15

    aput-byte v11, v4, v14

    move-object/from16 v21, v4

    invoke-static/range {v16 .. v21}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x24t
        0x63t
        0x46t
        0x17t
        0x18t
        0x32t
        0x3et
        0x41t
        0x6et
        0x3at
        0x2ct
        0x74t
        0x5ct
    .end array-data
.end method
