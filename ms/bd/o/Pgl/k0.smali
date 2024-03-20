.class public final Lms/bd/o/Pgl/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lms/bd/o/Pgl/l0$pgla;


# instance fields
.field private final a:J

.field private final b:Landroid/content/Context;

.field private final c:Lms/bd/o/Pgl/c;


# direct methods
.method constructor <init>(Lms/bd/o/Pgl/c;Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Lms/bd/o/Pgl/k0;->c:Lms/bd/o/Pgl/c;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lms/bd/o/Pgl/k0;->b:Landroid/content/Context;

    iput-wide p3, p0, Lms/bd/o/Pgl/k0;->a:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context could not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public frameSign(Ljava/lang/String;I)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lms/bd/o/Pgl/k0;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v4, p0, Lms/bd/o/Pgl/k0;->a:J

    const v2, 0x200000a

    const/4 v7, 0x0

    move v3, p2

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    instance-of p2, p1, [Ljava/lang/String;

    if-eqz p2, :cond_2

    array-length p2, p1

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_2

    aget-object v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-object v2, p1, v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getFeatureHash(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v4, p0, Lms/bd/o/Pgl/k0;->a:J

    const v2, 0x2000006

    const/4 v3, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length p2, p1

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_2

    aget-object v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-object v2, p1, v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getReportRaw(Ljava/lang/String;ILjava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lms/bd/o/Pgl/k0;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, ""

    :goto_1
    move-object v5, p3

    iget-wide v2, p0, Lms/bd/o/Pgl/k0;->a:J

    const v0, 0x2000008

    move v1, p2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, [Ljava/lang/Object;

    if-eqz p2, :cond_3

    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    const/4 p3, 0x2

    if-lt p2, p3, :cond_3

    const/4 p2, 0x0

    aget-object p3, p1, p2

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    aget-object v0, p1, p3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aget-object p2, p1, p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getToken()Ljava/lang/String;
    .locals 6

    iget-wide v2, p0, Lms/bd/o/Pgl/k0;->a:J

    const-wide/16 v0, -0x1

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const v0, 0x2000007

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public report(Ljava/lang/String;)V
    .locals 7

    iget-wide v0, p0, Lms/bd/o/Pgl/k0;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lms/bd/o/Pgl/k0;->a:J

    iget-object v6, p0, Lms/bd/o/Pgl/k0;->b:Landroid/content/Context;

    const v1, 0x2000001

    const/4 v2, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setBDDeviceID(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lms/bd/o/Pgl/k0;->c:Lms/bd/o/Pgl/c;

    iput-object p1, v0, Lms/bd/o/Pgl/c;->d:Ljava/lang/String;

    iget-wide v3, p0, Lms/bd/o/Pgl/k0;->a:J

    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-eqz v2, :cond_0

    iget-object v6, p0, Lms/bd/o/Pgl/k0;->b:Landroid/content/Context;

    const v1, 0x2000005

    const/4 v2, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCollectMode(I)V
    .locals 6

    iget-wide v2, p0, Lms/bd/o/Pgl/k0;->a:J

    const-wide/16 v0, -0x1

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const v0, 0x2000009

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lms/bd/o/Pgl/k0;->c:Lms/bd/o/Pgl/c;

    iput-object p1, v0, Lms/bd/o/Pgl/c;->c:Ljava/lang/String;

    iget-wide v3, p0, Lms/bd/o/Pgl/k0;->a:J

    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-eqz v2, :cond_0

    iget-object v6, p0, Lms/bd/o/Pgl/k0;->b:Landroid/content/Context;

    const v1, 0x2000002

    const/4 v2, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInstallID(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lms/bd/o/Pgl/k0;->c:Lms/bd/o/Pgl/c;

    iput-object p1, v0, Lms/bd/o/Pgl/c;->e:Ljava/lang/String;

    iget-wide v3, p0, Lms/bd/o/Pgl/k0;->a:J

    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-eqz v2, :cond_0

    iget-object v6, p0, Lms/bd/o/Pgl/k0;->b:Landroid/content/Context;

    const v1, 0x2000003

    const/4 v2, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lms/bd/o/Pgl/k0;->c:Lms/bd/o/Pgl/c;

    iput-object p1, v0, Lms/bd/o/Pgl/c;->f:Ljava/lang/String;

    iget-wide v3, p0, Lms/bd/o/Pgl/k0;->a:J

    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-eqz v2, :cond_0

    iget-object v6, p0, Lms/bd/o/Pgl/k0;->b:Landroid/content/Context;

    const v1, 0x2000004

    const/4 v2, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblb;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
