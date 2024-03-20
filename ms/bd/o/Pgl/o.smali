.class final Lms/bd/o/Pgl/o;
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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lms/bd/o/Pgl/pgla;->a()Lms/bd/o/Pgl/pgla;

    move-result-object p2

    invoke-virtual {p2}, Lms/bd/o/Pgl/pgla;->b()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x5

    new-array v5, p3, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "9f4f2e"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p2

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    return-object p1

    :array_0
    .array-data 1
        0x38t
        0x6ct
        0x48t
        0x1ct
        0x8t
    .end array-data
.end method
