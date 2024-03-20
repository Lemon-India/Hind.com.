.class Lms/bd/o/Pgl/q0$pgla;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/retrofit2/intercept/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lms/bd/o/Pgl/q0;->a(J)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lms/bd/o/Pgl/q0;


# direct methods
.method constructor <init>(Lms/bd/o/Pgl/q0;)V
    .locals 0

    iput-object p1, p0, Lms/bd/o/Pgl/q0$pgla;->a:Lms/bd/o/Pgl/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;)Lcom/bytedance/retrofit2/SsResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;->request()Lcom/bytedance/retrofit2/client/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;->proceed(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/SsResponse;->headers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/client/Header;

    const/4 v2, 0x7

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "b86b16"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x8

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "eb8180"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget-object v0, p0, Lms/bd/o/Pgl/q0$pgla;->a:Lms/bd/o/Pgl/q0;

    invoke-static {v0}, Lms/bd/o/Pgl/q0;->a(Lms/bd/o/Pgl/q0;)J

    move-result-wide v3

    const/4 v0, 0x6

    new-array v12, v0, [B

    fill-array-data v12, :array_2

    const v7, 0x1000001

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-string v11, "e1acaa"

    invoke-static/range {v7 .. v12}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const v1, 0x7000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1

    nop

    :array_0
    .array-data 1
        0x6bt
        0x77t
        0x51t
        0x5bt
        0x14t
        0x29t
        0x66t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x65t
        0x5bt
        0x7at
        0x3t
        0x26t
        0x72t
        0x42t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x36t
        0x2t
        0x18t
        0x4ct
        0x62t
    .end array-data
.end method
