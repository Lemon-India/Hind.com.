.class public final Le/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/b;
.implements Lf/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/b<",
        "Lf/e;",
        ">;",
        "Lf/c<",
        "Lf/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a;


# direct methods
.method private constructor <init>(Lg/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a$b;->a:Lg/a;

    return-void
.end method

.method public synthetic constructor <init>(Lg/a;Le/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a$b;-><init>(Lg/a;)V

    return-void
.end method

.method private synthetic a(Lf/e;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Le/a$b;->a:Lg/a;

    invoke-virtual {p1}, Lf/e;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/a;->c(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private synthetic b(Lf/e;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Le/a$b;->a:Lg/a;

    invoke-virtual {p1}, Lf/e;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/a;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic lambda$0I9yf49YX5X3OLqkWIwNlUoibaY(Le/a$b;Lf/e;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a$b;->b(Lf/e;)V

    return-void
.end method

.method public static synthetic lambda$MpGp5GR50kecu41V46Zyv-SXTew(Le/a$b;Lf/e;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a$b;->a(Lf/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lf/a;)V
    .locals 0

    check-cast p1, Lf/e;

    invoke-virtual {p0, p1}, Le/a$b;->d(Lf/e;)V

    return-void
.end method

.method public bridge synthetic b(Lf/a;)V
    .locals 0

    check-cast p1, Lf/e;

    invoke-virtual {p0, p1}, Le/a$b;->c(Lf/e;)V

    return-void
.end method

.method public c(Lf/e;)V
    .locals 1

    new-instance v0, Le/-$$Lambda$a$b$MpGp5GR50kecu41V46Zyv-SXTew;

    invoke-direct {v0, p0, p1}, Le/-$$Lambda$a$b$MpGp5GR50kecu41V46Zyv-SXTew;-><init>(Le/a$b;Lf/e;)V

    invoke-static {v0}, La/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lf/e;)V
    .locals 1

    new-instance v0, Le/-$$Lambda$a$b$0I9yf49YX5X3OLqkWIwNlUoibaY;

    invoke-direct {v0, p0, p1}, Le/-$$Lambda$a$b$0I9yf49YX5X3OLqkWIwNlUoibaY;-><init>(Le/a$b;Lf/e;)V

    invoke-static {v0}, La/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
