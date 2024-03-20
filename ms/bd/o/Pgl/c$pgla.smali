.class public abstract Lms/bd/o/Pgl/c$pgla;
.super Lms/bd/o/Pgl/c;
.source ""

# interfaces
.implements Lms/bd/o/Pgl/c$pblb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms/bd/o/Pgl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "pgla"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lms/bd/o/Pgl/c$pblb;",
        ">",
        "Lms/bd/o/Pgl/c;",
        "Lms/bd/o/Pgl/c$pblb;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1869f

    invoke-direct {p0, p1, p2, v0}, Lms/bd/o/Pgl/c$pgla;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/c;-><init>()V

    iput-object p1, p0, Lms/bd/o/Pgl/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lms/bd/o/Pgl/c;->i:Ljava/lang/String;

    iput p3, p0, Lms/bd/o/Pgl/c;->l:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appID or license must be set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1869f

    invoke-direct {p0, p1, p2, p3, v0}, Lms/bd/o/Pgl/c$pgla;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/c;-><init>()V

    iput-object p1, p0, Lms/bd/o/Pgl/c;->g:Ljava/lang/String;

    iput-object p2, p0, Lms/bd/o/Pgl/c;->h:Ljava/lang/String;

    iput-object p3, p0, Lms/bd/o/Pgl/c;->i:Ljava/lang/String;

    iput p4, p0, Lms/bd/o/Pgl/c;->l:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "0"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sdkID or license must be set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a()Lms/bd/o/Pgl/c;
    .locals 2

    iget v0, p0, Lms/bd/o/Pgl/c;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MSConfig init error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAdvanceInfo0(Ljava/lang/String;Ljava/lang/String;)Lms/bd/o/Pgl/c$pblb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lms/bd/o/Pgl/c;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setBDDeviceID0(Ljava/lang/String;)Lms/bd/o/Pgl/c$pblb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lms/bd/o/Pgl/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel0(Ljava/lang/String;)Lms/bd/o/Pgl/c$pblb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lms/bd/o/Pgl/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setClientType0(I)Lms/bd/o/Pgl/c$pblb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lms/bd/o/Pgl/c;->j:I

    return-object p0
.end method

.method public setCustomInfo0(Ljava/util/Map;)Lms/bd/o/Pgl/c$pblb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p1, p0, Lms/bd/o/Pgl/c;->m:Ljava/util/Map;

    return-object p0
.end method

.method public setDeviceID0(Ljava/lang/String;)Lms/bd/o/Pgl/c$pblb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lms/bd/o/Pgl/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setInstallID0(Ljava/lang/String;)Lms/bd/o/Pgl/c$pblb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lms/bd/o/Pgl/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setOVRegionType0(I)Lms/bd/o/Pgl/c$pblb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lms/bd/o/Pgl/c;->k:I

    return-object p0
.end method

.method public setSecssionID0(Ljava/lang/String;)Lms/bd/o/Pgl/c$pblb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lms/bd/o/Pgl/c;->f:Ljava/lang/String;

    return-object p0
.end method
