.class final Lms/bd/o/Pgl/pblh;
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

    invoke-static {}, Lms/bd/o/Pgl/pgla;->a()Lms/bd/o/Pgl/pgla;

    move-result-object p1

    invoke-virtual {p1}, Lms/bd/o/Pgl/pgla;->b()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :goto_0
    invoke-static {p2}, Lms/bd/o/Pgl/pbly;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string p2, ""

    if-eqz p1, :cond_1

    const p4, 0x71777777

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_2

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x12

    new-array v5, p1, [B

    .line 1
    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "3421e0"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object p1, p2

    .line 2
    :goto_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array v5, p1, [B

    const/16 p1, 0x7b

    aput-byte p1, v5, p3

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "1546a2"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xd

    new-array v5, p1, [B

    .line 3
    fill-array-data v5, :array_1

    const-string v4, "6e2369"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_1
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4
    :catch_1
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x4

    new-array v5, p1, [B

    fill-array-data v5, :array_2

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "1a3a77"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_3
    return-object p2

    nop

    :array_0
    .array-data 1
        0x2ft
        0x33t
        0x55t
        0x44t
        0x65t
        0x32t
        0x3dt
        0x10t
        0x6dt
        0x66t
        0x1dt
        0x35t
        0x49t
        0x44t
        0x54t
        0x29t
        0x35t
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x35t
        0x62t
        0x4dt
        0x42t
        0x8t
        0x3dt
        0x30t
        0x7bt
        0x61t
        0x76t
        0x2et
        0x6bt
        0x45t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xet
        0x6ct
        0x4et
        0x10t
    .end array-data
.end method
