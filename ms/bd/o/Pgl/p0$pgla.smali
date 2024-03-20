.class Lms/bd/o/Pgl/p0$pgla;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AddSecurityFactorProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lms/bd/o/Pgl/p0;->a(J)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lms/bd/o/Pgl/p0;


# direct methods
.method constructor <init>(Lms/bd/o/Pgl/p0;)V
    .locals 0

    iput-object p1, p0, Lms/bd/o/Pgl/p0$pgla;->a:Lms/bd/o/Pgl/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallToAddSecurityFactor(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v5, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v13, v2, [B

    fill-array-data v13, :array_0

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "3c6a83"

    invoke-static/range {v8 .. v13}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_2

    const/4 v3, 0x5

    new-array v13, v3, [B

    fill-array-data v13, :array_1

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "88c2e2"

    invoke-static/range {v8 .. v13}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-array v13, v4, [B

    fill-array-data v13, :array_2

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "96cf73"

    invoke-static/range {v8 .. v13}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x19

    new-array v8, v2, [B

    fill-array-data v8, :array_3

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "e257a9"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-static {}, Lms/bd/o/Pgl/y0;->a()Lms/bd/o/Pgl/y0;

    move-result-object v3

    invoke-virtual {v3}, Lms/bd/o/Pgl/y0;->c()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    :cond_4
    if-eqz v11, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const v12, 0x1000001

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-string v16, "7a30e4"

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v17}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-array v1, v10, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    iget-object v1, v0, Lms/bd/o/Pgl/p0$pgla;->a:Lms/bd/o/Pgl/p0;

    invoke-static {v1}, Lms/bd/o/Pgl/p0;->a(Lms/bd/o/Pgl/p0;)J

    move-result-wide v3

    const v1, 0x3000001

    const/4 v2, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    goto :goto_3

    :cond_6
    new-array v2, v4, [B

    fill-array-data v2, :array_5

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "746072"

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v16}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "48481f"

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v10, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [Ljava/lang/String;

    iget-object v1, v0, Lms/bd/o/Pgl/p0$pgla;->a:Lms/bd/o/Pgl/p0;

    invoke-static {v1}, Lms/bd/o/Pgl/p0;->a(Lms/bd/o/Pgl/p0;)J

    move-result-wide v13

    const v11, 0x6000001

    const/4 v15, 0x0

    invoke-static/range {v11 .. v16}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v9, :cond_9

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_4
    array-length v2, v9

    if-ge v10, v2, :cond_8

    aget-object v2, v9, v10

    add-int/lit8 v3, v10, 0x1

    aget-object v3, v9, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    :cond_8
    return-object v1

    :cond_9
    :goto_5
    return-object v7

    nop

    :array_0
    .array-data 1
        0x2at
        0x75t
        0x51t
        0x5t
    .end array-data

    :array_1
    .array-data 1
        0x21t
        0x2et
        0x4t
        0x56t
        0x49t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3ft
        0x27t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7dt
        0x24t
        0x6t
        0x4et
        0x4bt
        0x3dt
        0x72t
        0x53t
        0x66t
        0x62t
        0x34t
        0x38t
        0x52t
        0x57t
        0x4et
        0x61t
        0x6et
        0x7t
        0x70t
        0x77t
        0x67t
        0x7ft
        0x51t
        0x50t
        0x4dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x2et
        0x77t
        0x54t
        0x54t
    .end array-data

    :array_5
    .array-data 1
        0x31t
        0x25t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x10t
        0x8t
        0x6bt
    .end array-data
.end method
