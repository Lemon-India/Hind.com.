.class public Le/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:Le/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Le/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V
    .locals 3

    sget-object v0, Le/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lh/b;

    invoke-direct {v0, p0}, Lh/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lh/b;->b()V

    new-instance p0, Le/a;

    invoke-direct {p0, p1, v0}, Le/a;-><init>(Lio/bidmachine/analytics/AnalyticsConfig;Lg/a;)V

    sput-object p0, Le/b;->b:Le/a;

    return-void
.end method

.method public static a(Lio/bidmachine/analytics/entity/Event;)V
    .locals 1

    sget-object v0, Le/b;->b:Le/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Le/a;->b(Lio/bidmachine/analytics/entity/Event;)V

    :cond_0
    return-void
.end method
