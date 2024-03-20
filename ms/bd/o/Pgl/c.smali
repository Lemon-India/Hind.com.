.class public Lms/bd/o/Pgl/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lms/bd/o/Pgl/c$pgla;,
        Lms/bd/o/Pgl/c$pblb;
    }
.end annotation


# static fields
.field public static final CLIENT_TYPE_BUSINESS:I = 0x1

.field public static final CLIENT_TYPE_INHOUSE:I = 0x0

.field public static final CLIENT_TYPE_UNKNOWN:I = -0x1

.field public static final COLLECT_MODE_DEFAULT:I = 0x1869f

.field public static final COLLECT_MODE_FINANCE:I = 0x12c

.field public static final COLLECT_MODE_HELO:I = 0x13b

.field public static final COLLECT_MODE_MINIMIZE:I = 0x5

.field public static final COLLECT_MODE_ML_MINIMIZE:I = 0x122

.field public static final COLLECT_MODE_ML_PGL_AL:I = 0x32a

.field public static final COLLECT_MODE_ML_TEEN:I = 0x118

.field public static final COLLECT_MODE_OV_MINIMIZE:I = 0x5

.field public static final COLLECT_MODE_RESSO:I = 0x13b

.field public static final COLLECT_MODE_TIKTOK:I = 0x1f7

.field public static final COLLECT_MODE_TIKTOKLITE:I = 0x14a

.field public static final COLLECT_MODE_TIKTOK_BASE:I = 0xa

.field public static final COLLECT_MODE_TIKTOK_GUEST:I = 0x1f8

.field public static final COLLECT_MODE_TIKTOK_INIT:I = 0x5

.field public static final COLLECT_MODE_TIKTOK_NONUSEA:I = 0x25b

.field public static final COLLECT_MODE_TIKTOK_U13:I = 0xa

.field public static final COLLECT_MODE_TIKTOK_USEA:I = 0x1f7

.field public static final COLLECT_MODE_TIKTOK_USUNREGISTER:I = 0xa

.field public static final OVREGION_TYPE_SG:I = 0x0

.field public static final OVREGION_TYPE_UNKNOWN:I = -0x1

.field public static final OVREGION_TYPE_VA:I = 0x1


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lms/bd/o/Pgl/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lms/bd/o/Pgl/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lms/bd/o/Pgl/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lms/bd/o/Pgl/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lms/bd/o/Pgl/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lms/bd/o/Pgl/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lms/bd/o/Pgl/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lms/bd/o/Pgl/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lms/bd/o/Pgl/c;->i:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lms/bd/o/Pgl/c;->j:I

    iput v0, p0, Lms/bd/o/Pgl/c;->k:I

    const v0, 0x1869f

    iput v0, p0, Lms/bd/o/Pgl/c;->l:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lms/bd/o/Pgl/c;->m:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lms/bd/o/Pgl/c;->n:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method
