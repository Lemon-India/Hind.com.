.class public final enum Lf/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lf/d;

.field public static final enum c:Lf/d;

.field public static final synthetic d:[Lf/d;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lf/d;

    const-string v1, "Get"

    const/4 v2, 0x0

    const-string v3, "GET"

    invoke-direct {v0, v1, v2, v3}, Lf/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf/d;->b:Lf/d;

    new-instance v1, Lf/d;

    const-string v3, "Post"

    const/4 v4, 0x1

    const-string v5, "POST"

    invoke-direct {v1, v3, v4, v5}, Lf/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lf/d;->c:Lf/d;

    const/4 v3, 0x2

    new-array v3, v3, [Lf/d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lf/d;->d:[Lf/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lf/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf/d;
    .locals 1

    const-class v0, Lf/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/d;

    return-object p0
.end method

.method public static values()[Lf/d;
    .locals 1

    sget-object v0, Lf/d;->d:[Lf/d;

    invoke-virtual {v0}, [Lf/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/URLConnection;)V
    .locals 1

    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lf/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
