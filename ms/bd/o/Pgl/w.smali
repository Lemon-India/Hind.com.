.class final Lms/bd/o/Pgl/w;
.super Lms/bd/o/Pgl/pblb$pgla;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lms/bd/o/Pgl/pgla;->a()Lms/bd/o/Pgl/pgla;

    move-result-object v0

    invoke-virtual {v0}, Lms/bd/o/Pgl/pgla;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "6b685f"

    const/16 v7, 0xc

    :try_start_0
    new-array v6, v7, [B

    const/16 v8, 0x24

    const/4 v9, 0x0

    aput-byte v8, v6, v9

    const/16 v8, 0x6f

    const/4 v10, 0x1

    aput-byte v8, v6, v10

    const/16 v8, 0x4b

    const/4 v11, 0x2

    aput-byte v8, v6, v11

    const/16 v8, 0x42

    const/4 v12, 0x3

    aput-byte v8, v6, v12

    const/16 v8, 0xf

    const/4 v13, 0x4

    aput-byte v8, v6, v13

    const/16 v14, 0x72

    const/4 v15, 0x5

    aput-byte v14, v6, v15

    const/16 v14, 0x21

    const/16 v16, 0x6

    aput-byte v14, v6, v16

    const/16 v17, 0x4a

    const/16 v18, 0x7

    aput-byte v17, v6, v18

    const/16 v19, 0x71

    const/16 v20, 0x8

    aput-byte v19, v6, v20

    const/16 v21, 0x61

    const/16 v22, 0x9

    aput-byte v21, v6, v22

    const/16 v23, 0x33

    const/16 v24, 0xa

    aput-byte v23, v6, v24

    const/16 v23, 0x79

    const/16 v8, 0xb

    aput-byte v23, v6, v8

    .line 1
    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "517402"

    const/16 v2, 0x14

    :try_start_1
    new-array v2, v2, [B

    const/16 v3, 0x23

    aput-byte v3, v2, v9

    const/16 v3, 0x36

    aput-byte v3, v2, v10

    const/16 v3, 0x50

    aput-byte v3, v2, v11

    aput-byte v21, v2, v12

    aput-byte v7, v2, v13

    const/16 v3, 0x31

    aput-byte v3, v2, v15

    const/16 v3, 0x3f

    aput-byte v3, v2, v16

    aput-byte v16, v2, v18

    const/16 v4, 0x63

    aput-byte v4, v2, v20

    aput-byte v17, v2, v22

    aput-byte v14, v2, v24

    const/16 v4, 0x27

    aput-byte v4, v2, v8

    const/16 v4, 0x53

    aput-byte v4, v2, v7

    const/16 v4, 0xd

    const/16 v5, 0x4f

    aput-byte v5, v2, v4

    const/16 v4, 0xe

    const/16 v5, 0x1d

    aput-byte v5, v2, v4

    const/16 v4, 0x2e

    const/16 v5, 0xf

    aput-byte v4, v2, v5

    const/16 v4, 0x10

    const/16 v5, 0x1f

    aput-byte v5, v2, v4

    const/16 v4, 0x11

    const/16 v5, 0x1e

    aput-byte v5, v2, v4

    const/16 v4, 0x12

    const/16 v5, 0x60

    aput-byte v5, v2, v4

    const/16 v4, 0x6b

    const/16 v5, 0x13

    aput-byte v4, v2, v5

    move-object/from16 v30, v2

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "e35ca4"

    :try_start_2
    new-array v2, v8, [B

    const/16 v4, 0x7d

    aput-byte v4, v2, v9

    const/16 v4, 0x22

    aput-byte v4, v2, v10

    const/16 v4, 0x67

    aput-byte v4, v2, v11

    aput-byte v10, v2, v12

    const/16 v4, 0x5f

    aput-byte v4, v2, v13

    const/16 v4, 0x2a

    aput-byte v4, v2, v15

    const/16 v4, 0x6a

    aput-byte v4, v2, v16

    aput-byte v5, v2, v18

    const/16 v4, 0x66

    aput-byte v4, v2, v20

    aput-byte v3, v2, v22

    aput-byte v19, v2, v24

    move-object/from16 v30, v2

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method
