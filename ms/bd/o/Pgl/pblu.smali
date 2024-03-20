.class public Lms/bd/o/Pgl/pblu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lms/bd/o/Pgl/pblu$pgla;,
        Lms/bd/o/Pgl/pblu$pblb;,
        Lms/bd/o/Pgl/pblu$pblc;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lms/bd/o/Pgl/pblv;

    .line 2
    new-instance v1, Lms/bd/o/Pgl/pblx;

    invoke-direct {v1}, Lms/bd/o/Pgl/pblx;-><init>()V

    new-instance v2, Lms/bd/o/Pgl/pbls;

    invoke-direct {v2}, Lms/bd/o/Pgl/pbls;-><init>()V

    invoke-direct {v0, v1, v2}, Lms/bd/o/Pgl/pblv;-><init>(Lms/bd/o/Pgl/pblu$pblb;Lms/bd/o/Pgl/pblu$pgla;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p0, p1, v1, v1}, Lms/bd/o/Pgl/pblv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lms/bd/o/Pgl/pblu$pblc;)V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
