.class public Lms/bd/o/Pgl/x0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x1b

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "ee3651"

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lms/bd/o/Pgl/x0;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x62t
        0x33t
        0xet
        0x11t
        0x44t
        0x71t
        0x2bt
        0x45t
        0x6et
        0x76t
        0x7ct
        0x66t
        0xet
        0x17t
        0x47t
        0x16t
        0x61t
        0x48t
        0x2ft
        0x64t
        0x61t
        0x74t
        0x49t
        0x4ct
        0xft
        0x35t
        0x75t
    .end array-data
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lms/bd/o/Pgl/x0;->a:Ljava/lang/String;

    return-object v0
.end method
